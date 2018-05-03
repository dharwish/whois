<?php
include 'functions.php';

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Whois</title>
    <link rel="stylesheet" href="css/bulma.css">
    <link rel="stylesheet" href="css/dharwish.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>
<section class="hero is-primary">
    <div class="hero-body">
        <div class="container has-text-centered">
            <h1 class="title">
                Whois Lookup
            </h1>
            <h2 class="subtitle">
                Search By URL / IP
            </h2>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="tile is-ancestor">
            <div class="tile notification is-primary tile is-parent">
                <form class="whoisform" id="whoisform">
                <div class="field has-addons is-textfull">
                    <div class="control is-expanded">
                        <input class="input" type="text" placeholder="Domain Name / IP Address" name="domain" id="domain">
                    </div>
                    <div class="control">
                        <button type="submit" class="button is-info" >
                            Search
                        </button>
                    </div>
                </div>
                </form>
            </div>

        </div>

        <div class="tile is-ancestor" >

	       
            <div class="tile is-parent" id="tldDiv">
                <div class="tile is-child box" >
	                <?php TldTags();?>

                </div>
            </div>




        </div>
</section>




<footer class="footer">
    <div class="container">
        <div class="content has-text-centered">
            <p>
                <strong>Whois Lookup</strong> by <a href="http://dharwish.com">Dharwish</a>.
            </p>
        </div>
    </div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

var request;


$("#whoisform").submit(function(event){

   
    event.preventDefault();


    if (request) {
        request.abort();
    }
   
    var $form = $(this);

  
    var $inputs = $form.find("input, select, button, textarea");

   
    var serializedData = $form.serialize();

   
    $inputs.prop("disabled", true);

   
    request = $.ajax({
        url: "requestprocess.php",
        type: "post",
        data: serializedData
    });

   
    request.done(function (response, textStatus, jqXHR){
$( "#whoisResult" ).remove();
$(response).insertBefore( "#tldDiv" );
    });

    
    request.fail(function (jqXHR, textStatus, errorThrown){
    
        console.error(
            "The following error occurred: "+
            textStatus, errorThrown
        );
    });

    
    request.always(function () {
      
        $inputs.prop("disabled", false);
    });
 return false;

});
</script>
</body>
</html>