require 'open-uri'
require 'nokogiri'
require 'awesome_print'
doc = Nokogiri::HTML(open("http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data"))
college_rows = doc.css('table.ranking-data > tbody > tr')
keys = ['name','rank','tuition_fees','total_enrollment','acceptance_rate','average_retention_rates','graduation_rate']

colleges_json = []
college_rows.each do |college|
	values = college.css('td').map{|t| t.text.gsub(/\s+/, "") }
	colleges_json << {}.merge!( Hash[ keys.zip(values) ] )
end
ap colleges_json