require 'rexml/document'
require 'open-uri'
include REXML

VIC_WEATHER_ENDPOINT = "ftp://ftp.bom.gov.au/anon/gen/fwo/IDV10753.xml"
FORECAST_XPATH = '//area[@description="Melbourne"]/forecast-period'

print "Downloading weather information... "
doc = Document.new(open(VIC_WEATHER_ENDPOINT).read)
puts "done!"

def forecast_hash_for(forecast)
end

result = XPath.each(doc, FORECAST_XPATH).map do |forecast|
  forecast
    .children
    .select { |child| child.class == REXML::Element }
    .inject( {} ) { |a,x| a[x['type'].to_sym] = x.first; a }
    .merge( { date: Date.parse(forecast['start-time-local']).iso8601 })
end

puts result
