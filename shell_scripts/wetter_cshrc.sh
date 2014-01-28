#!/bin/tcsh
#Location
#curl --silent "http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c" |grep location \
#|awk -F\" '{print $2":" ;}'
echo
echo  "\033[1mHamburg:\033[0m"
echo

#Local Weather
echo  "\033[1mCondition\033[0m"

curl --silent "http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c" |grep condition \
| awk -F\" '{print "Date: " $8 ;}'

curl --silent "http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c" |grep condition \
| awk -F\" '{print "Condition: " $2 "\n""Temperature: " $6 "\xc2\xb0 C";}'

curl --silent "http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c" |grep atmosphere \
| awk -F\" '{print "Humidity: " $2 " %" "\n""Visibility: " $4 "\n" "Pressure: " $6 " hPa";}'

curl --silent "http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c" |grep wind \
| awk -F\" '{print "Chill: " $2 "\n" "Direction: " $4 "\xc2\xb0" "\n" "Speed: " $6 " km/h";}'

#Sunrise/set
echo  "\033[1mDaylight\033[0m"
curl --silent "http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c" |grep astronomy \
| awk -F\" '{print "Sunrise: " $2 "\n" "Sunset: " $4;}'


#Forecast
echo  "\033[1mForecast\033[0m"
curl --silent "http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c" | grep High: \
| sed -e 's/<br \/>//' 

