#!/bin/tcsh 
finger
echo "Geben sie die letzten 7 Stellen ein"

set Name = $< 
echo "Wieviel Spam?"
set ECount = $<
set Count=1
while ( $Count <= $ECount )

echo "HALT STOP" |write $Name



@ Count++
end
echo "DER CHAT BLEIBT SO WIE ER IST" |write u$Name
exit
#
