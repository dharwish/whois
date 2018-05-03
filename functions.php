<?php

function dbConnection()
{
$con = mysqli_connect("<DATABASE_HOST>","<DATABASE_USERNAME>","<DATABASE_PASSWORD>","<DATABASE_NAME>");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

return $con;

}

function TldTags()
{
	$con = dbConnection();
	$result=mysqli_query($con,"select DISTINCT extension from whois_list where status=1");
	while($row=mysqli_fetch_assoc($result))
	{
	    echo '     <span class="tag is-primary">.'.$row["extension"].'</span>';

	}
	
}


function GetRegistryList($tld)
{
	$registrylist=array();
$con = dbConnection();
   
	$result=mysqli_query($con,"select * from whois_list where extension='".$tld."' and status=1");
	
	if(mysqli_num_rows($result)>0)
	{
		while($row=mysqli_fetch_assoc($result))
		{
		array_push($registrylist,array($row['registry']));
		}
		
		
	}
	
   

	return $registrylist;
	


}
function LookupDomain($domain){
	global $whoisservers;
	$domain_parts = explode(".", $domain);
	$tld = strtolower(array_pop($domain_parts));
	$whoisserver = GetRegistryList($tld);
	if(count($whoisserver)<1) {
		return "Error: No appropriate Whois server found for $domain domain!";
	}

	$result = QueryWhoisServer($whoisserver, $domain);
	
	//Till Here
	
	
	if(!$result) {
		return "Error: No results retrieved from $whoisserver server for $domain domain!";
	}
	else {
		while(strpos($result, "Whois Server:") !== FALSE){
			preg_match("/Whois Server: (.*)/", $result, $matches);
			$secondary = $matches[1];
			if($secondary) {
				$result = QueryWhoisServer($secondary, $domain);
				$whoisserver = $secondary;
			}
		}
	}
	return "<h3 class='text-center' role='alert'>$domain Domain lookup results\n\n</h3><br/><pre>" . $result."</pre>";
}
function LookupIP($ip) {// Need optimization
	$whoisservers = array(
		//"whois.afrinic.net", // Africa - returns timeout error :-(
		"whois.lacnic.net", // Latin America and Caribbean - returns data for ALL locations worldwide :-)
		"whois.apnic.net", // Asia/Pacific only
		"whois.arin.net", // North America only
		"whois.ripe.net" // Europe, Middle East and Central Asia only
	);
	$results = array();
	foreach($whoisservers as $whoisserver) {
		$result = QueryWhoisServerIP($whoisserver, $ip);
		if($result && !in_array($result, $results)) {
			$results[$whoisserver]= $result;
		}
	}
	$res = "RESULTS FOUND: " . count($results);
	foreach($results as $whoisserver=>$result) {
		$res .= "\n\n-------------\nLookup results for " . $ip . " from " . $whoisserver . " server:\n\n" . $result;
	}
	return $res;
}
function ValidateIP($ip) {
	$ipnums = explode(".", $ip);
	if(count($ipnums) != 4) {
		return false;
	}
	foreach($ipnums as $ipnum) {
		if(!is_numeric($ipnum) || ($ipnum > 255)) {
			return false;
		}
	}
	return $ip;
}

function ValidateDomain($domain) {
	if(!preg_match("/^([-a-z0-9]{2,100})\.([a-z\.]{2,8})$/i", $domain)) {
		return false;
	}
	return $domain;
}

function QueryWhoisServer($whoisserver, $domain) {
for($wi=0;$wi<count($whoisserver);$wi++)
{

	$port = 43;
	$timeout = 10;

	$fp = fsockopen($whoisserver[$wi][0], $port, $errno, $errstr, $timeout) or die("Socket Error " . $errno . " - " . $errstr);
	//if($whoisserver == "whois.verisign-grs.com") $domain = "=".$domain; // whois.verisign-grs.com requires the equals sign ("=") or it returns any result containing the searched string.
	fputs($fp, $domain . "\r\n");
	$out = "";
	while(!feof($fp)){
		$out .= fgets($fp);
	}
	fclose($fp);
	$res = "";
	if((strpos(strtolower($out), "error") === FALSE) && (strpos(strtolower($out), "not allocated") === FALSE)) {
		$rows = explode("\n", $out);
		foreach($rows as $row) {
			$row = trim($row);
			if(($row != '') && ($row{0} != '#') && ($row{0} != '%')) {
				$res .= $row."\n";
			}
		}
	}
	return $res;
}
}

function QueryWhoisServerIP($whoisserver, $domain) {


	$port = 43;
	$timeout = 10;

	$fp = fsockopen($whoisserver, $port, $errno, $errstr, $timeout) or die("Socket Error " . $errno . " - " . $errstr);
	//if($whoisserver == "whois.verisign-grs.com") $domain = "=".$domain; // whois.verisign-grs.com requires the equals sign ("=") or it returns any result containing the searched string.
	fputs($fp, $domain . "\r\n");
	$out = "";
	while(!feof($fp)){
		$out .= fgets($fp);
	}
	fclose($fp);
	$res = "";
	if((strpos(strtolower($out), "error") === FALSE) && (strpos(strtolower($out), "not allocated") === FALSE)) {
		$rows = explode("\n", $out);
		foreach($rows as $row) {
			$row = trim($row);
			if(($row != '') && ($row{0} != '#') && ($row{0} != '%')) {
				$res .= $row."\n";
			}
		}
	}
	return $res;

}
function print_otherinfo($domain) //Sample function for testing
{
$result1 = dns_get_record($domain, DNS_ANY, $authns, $addtl);
echo "Result = ";
print_r($result1);
echo "Auth NS = ";
print_r($authns);
echo "Additional = ";
print_r($addtl);
}
function getDNS_info($domain)
{
// print it in nice format. Also link to corresponding servers based on nameservers.

$authns = null;
$addtl = null;
$returnValue = dns_get_record($domain, DNS_ALL, $authns, $addtl);

//Not Complete

}
?>