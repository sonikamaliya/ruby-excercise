puts 'How many tests?'
count = gets

sub1 = []
sub2 = [] 
sub3 = []

(1..count.to_i).each do |index|
	input = gets
	sub1 << input.split(" ")[0].to_i
	sub2 << input.split(" ")[1].to_i
	sub3 << input.split(" ")[2].to_i
end

puts "Super Score : #{(sub1.max + sub2.max + sub3.max)}"

# 3
# 750 650 650 2016-01-01 00:00:00
# 740 610 680 2016-02-01 00:00:00
# 790 450 750 2016-03-01 00:00:00