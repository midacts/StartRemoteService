#####################
###SINGLE COMPUTER###
#####################
$comp = # computer name
$service = # service name


(get-wmiobject -computer $comp win32_service -filter "Name='$service'").invokemethod("Startservice",$null)


###################
###ALL COMPUTERS###
###################
$service = # service name
$list = get-content "# FILENAME"

foreach($comp in $list){
(get-wmiobject -computer $comp win32_service -filter "Name='$service'").invokemethod("Startservice",$null)
}