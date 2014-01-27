
#curl --silent "http://feeds.feedburner.com/blogspot/rkEL"\
#|sed -e 's/<item>/,/<\/item>/'\
#|sed -e 's/<category/,/<\/category>/'
#| grep -E '<title>'\
#| sed -e 's/<title>//'\
#| sed -e 's/<\/title>//'\
# | sed -e 's/ä/ae/g;s/ü/ue/g;s/ö/oe/g'
#curl --silent  "http://www.tagesschau.de/xml/tagesschau-meldungen/"\
# | grep 'title' \
# | sed -e 's/<title>//'\
# | sed -e 's/<\/title>//'\
# | sed -e 's/ä/ae/g;s/ü/ue/g;s/ö/oe/g'
#curl --silent "http://www.spiegel.de/schlagzeilen/tops/index.rss"\ | grep -E '(title>|description>)' | head 
# | grep -E '(title)'\
# | sed -e 's/<title>//'\
# | sed -e 's/<\/title>//'\
# | sed -e 's/ä/ae/g;s/ü/ue/g;s/ö/oe/g'
