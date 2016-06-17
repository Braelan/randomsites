#get a random site from the top 1000, can be adjusted with the curl head count below.
#curl -s -O http://s3.amazonaws.com/alexa-static/top-1m.csv.zip ; unzip -q -o top-1m.csv.zip top-1m.csv ; head -1000000 top-1m.csv | cut -d, -f2 | cut -d/ -f1 > miltopsites.txt

array = ['first','second','third', 'fourth', 'fifth', 'sixth', 'seventh', 'eighth', 'ninth', 'tenth']
filename = ARGV[0]

if array.include?(filename)
        filename= "splitlist/"+filename + ".txt"
	f = File.open(filename).each do |line|

	array << line
	end

	puts array[rand(100000)]
else
 puts "expects first through tenth as an argument (corresponds to 100000 sample size in 1 million)"
end
