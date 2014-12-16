import numpy as np
import sys
import feedparser
import re

raw_weather = feedparser.parse('http://xml.weather.yahoo.com/forecastrss?p=GMXX0049&u=c')

#print raw_weather
#print raw_weather['feed']['title']
#print raw_weather['feed']['date']
#print raw_weather.entries[0]
#print '######################################################'
#print raw_weather.entries[0].yweather_condition
#print raw_weather.entries[0].yweather_condition['date']
#print raw_weather.entries[0].yweather_condition['temp']


print '######################################################'
print raw_weather
print raw_weather['feed']['ttl']
print raw_weather['feed'][u'yweather_atmosphere']['humidity']



print '######################################################'
print '######################################################'
print raw_weather['feed'][u'yweather_wind']
print '######################################################'
print raw_weather['feed'][u'yweather_units']
print '######################################################'
print raw_weather['feed'][u'yweather_location']
print '######################################################'
print raw_weather['feed'][u'yweather_astronomy']
print '######################################################'
print raw_weather['feed'][u'yweather_atmosphere']
print '######################################################'
print raw_weather['feed']['updated_parsed']
print '######################################################'
#print raw_weather.entries[0].summary_detail
#print '######################################################'
#print '######################################################'
#print raw_weather['entries']
#print raw_weather['entries'][0]['summary_detail']['value']

#UNITS
unit_distance=raw_weather['feed'][u'yweather_units'] ['distance']
unit_speed=raw_weather['feed'][u'yweather_units'] ['speed']
unit_temperature=raw_weather['feed'][u'yweather_units'] ['temperature']
unit_pressure=raw_weather['feed'][u'yweather_units'] ['pressure']

#LOCATION
city=raw_weather['feed'][u'yweather_location'] ['city']

#WIND
wind_dir=raw_weather['feed'][u'yweather_wind'] ['direction']
wind_speed=raw_weather['feed'][u'yweather_wind'] ['speed']
wind_chill=raw_weather['feed'][u'yweather_wind'] ['chill'] 


print '######################################################'
print 'City:', city
print '######################################################'
print 'Wind direction:', wind_dir, u"\u00b0"
print 'Wind speed:', wind_speed, unit_speed
print 'Wind chill:', wind_chill


print '######################################################'
text = raw_weather['entries'][0]['summary_detail']['value']
newstr = text.replace("<br />", "")
newstr = newstr.replace("<b>", "")
newstr = newstr.replace("</b>", "")

print '######################################################'
print '######################################################'
print newstr.split('\n', 12)[1]
print newstr.split('\n', 12)[2]
print newstr.split('\n', 12)[3]
print newstr.split('\n', 12)[4]
print newstr.split('\n', 12)[5]
print newstr.split('\n', 12)[6]
print newstr.split('\n', 12)[7]
print newstr.split('\n', 12)[8]

