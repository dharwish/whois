 <?php
include 'functions.php';
//check current url of the request to avoid the use bby 3rd party
	        if(isset($_POST['domain'])) {
		        ?>
                <div class="tile is-8 is-vertical is-parent" id="whoisResult">
                    <div class="tile is-child box">
				        <?php
				        $domain = trim( $_POST['domain'] );
				        if ( substr( strtolower( $domain ), 0, 7 ) == "http://" ) {
					        $domain = substr( $domain, 7 );
				        }
				        if ( substr( strtolower( $domain ), 0, 4 ) == "www." ) {
					        $domain = substr( $domain, 4 );
				        }
				        if ( ValidateIP( $domain ) ) {
					        echo "hello before check";
					        $result = LookupIP( $domain );
				        } elseif ( ValidateDomain( $domain ) ) {
					        $result = LookupDomain( $domain );
				        } else {
					        die( "Invalid Input!" );
				        }
				        echo "\n" . $result . "\n\n";



//print_otherinfo($domain);

				        ?>



                    </div>

                </div>
		        <?php
	        }
            ?>