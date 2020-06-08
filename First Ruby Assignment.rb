#!
=begin
Extra examples from https://www.tutorialspoint.com/
=end
names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

#!Examples from https://try.ruby-lang.org/


5.times do
    print 'Welcome'
end

5.times do
    puts 'Welcome'
end

puts 2 + 6
puts 4 * 10
puts 12 - 5
puts 30/4
puts "Richie".reverse
puts "Richie".length
puts 40.to_s.reverse
puts [12, 47, 35].max
puts [12, 47, 35].min

ticket = [12, 47, 35]
print ticket
puts ticket[0]
puts ticket[1]
puts ticket[2]
puts
print ticket.sort!
puts

poem = "My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."
puts poem
puts
puts poem.gsub("toast", "honeydew")
puts
puts poem.lines.reverse.join

puts

books = {}
books["Cracking the Coding Interview"] = :splendid
books["Nada 3"] = :abysmal
books["Let's Count Sand"] = :mediocre

puts books
puts books.length
puts books["Cracking the Coding Interview"]
puts books.keys

ratings = Hash.new {0}

books.values.each { |rate|
    ratings[rate] += 1
}

puts ratings

def tame( number_of_shrews )
    number_of_shrews.times {
    puts "Tamed a shrew"
    }
end

tame 1

if 1 < 2
    puts "It is true: 1 is less than 2"
end
puts "It is true: 1 is less than 2" if 1 < 2

a = 0

if a === 100
    puts "Expression is true, but a is now: #{a}"
else
    puts "#{a} is not equal to 100"
end

def hungry?(time_of_day_in_hours) 
    if time_of_day_in_hours < 12
        puts "Me not hungry"
        false
    else
        puts "Me hungry"
        true
    end
end

def eat_an(what)
    puts "Me eat #{what}\n"
end

puts eat_an 'apple' if hungry?(14)

puts eat_an 'apple' if hungry?(10)

class Blurb
    attr_accessor :content, :time, :mood
    def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
    end
end



Blurb1 = Blurb.new :sick, "Today Mount Hood Was Stolen!"
Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"

puts Blurb1
puts Blurb1.mood
puts Blurb1.content
puts Blurb2
puts Blurb2.mood
puts Blurb2.content