require 'date'

zodiac = {
    :aquarius => {
        :element => "Air",
        :start_date => "January 20",
        :end_date => "February 18"
    },
    :pisces => {
        :element => "Water",
        :start_date => "February 19",
        :end_date => "March 20"
    },
    :aries => {
        :element => "Fire",
        :start_date => "March 21",
        :end_date => "April 19"
    },
    :taurus => {
        :element => "Earth",
        :start_date => "April 20",
        :end_date => "May 20"
    },
    :gemini => {
        :element => "Air",
        :start_date => "May 21",
        :end_date => "June 20"
    },
    :cancer => {
        :element => "Water",
        :start_date => "June 21",
        :end_date => "July 22"
    },
    :leo => {
        :element => "Fire",
        :start_date => "July 23",
        :end_date => "August 22"
    },
    :virgo => {
        :element => "Earth",
        :start_date => "August 23",
        :end_date => "September 22"
    },
    :libra => {
        :element => "Air",
        :start_date => "September 23",
        :end_date => "October 22"
    },
    :scorpio => {
        :element => "Water",
        :start_date => "October 23",
        :end_date => "November 21"
    },
    :sagittarius => {
        :element => "Fire",
        :start_date => "November 22",
        :end_date => "December 21"
    },
    :capricorn => {
        :element => "Earth",
        :start_date => "December 22",
        :end_date => "January 19"
    }
}

zodiac.each do |item|
    puts "#{item[0]}"
end

zodiac.each do |key, value|
    Date.parse(value[:start_date])
    Date.parse(value[:end_date])
end

zodiac_elements = {
    :water => ["scorpio", "cancer", "pisces"],
    :earth => ["capricorn", "virgo", "taurus"],
    :fire => ["sagittarius", "leo", "aries"],
    :air => ["libra", "gemini", "aquarius"]
}

zodiac_elements.each do |key, value|
    puts "#{value.map(&:upcase)}"
end

zodiac.each do |key, value|
    puts "The #{key}, from #{value[:start_date]} to #{value[:end_date]} is a #{value[:element]} sign."
end

zodiac.each do |key, value|
    if value[:start_date] == "April 20" || value[:start_date] == "September 23" 
        puts "#{key} "
    end
end

puts "***************************************"

chinese_animal_zodiac = ["Rat", "Ox",
"Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey",
"Rooster", "Dog", "Pig"]

a_m_c_z = chinese_animal_zodiac.select { |animal| animal[0,1] == "D" || animal[0,1] == "G" || animal[0,1] == "H" || animal[0,1] == "M" }

print a_m_c_z

puts ""

n_z_c_z = chinese_animal_zodiac.select { |animal| animal[0,1] == "S" || animal[0,1] == "R" || animal[0,1] == "T" || animal[0,1] == "O" || animal[0,1] == "P" }

print n_z_c_z 

puts ""

c_z_length = chinese_animal_zodiac.map{|word| word.length}
print c_z_length

puts ""

puts c_z_length.inject(0){|sum,x| sum + x }


words_length = chinese_animal_zodiac.sort_by { |word| word.length}
puts words_length


r_array = chinese_animal_zodiac.select { |animal| animal[0,1] == "R"}
puts r_array.inspect




