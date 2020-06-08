class Blurbalizer
    def initialize(title)
        @title  = title
        @blurbs = [] # A fresh clean array for storing Blurbs
end

class Blurb
    attr_accessor :content, :time, :mood
    def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
        def moodify
            if    @mood == :sad
                return ":-("
            elsif @mood == :happy
                return ":-)"
            # Add other moods here
            end
        
            # The default mood
            ":-|"
        end
    end
end

def add_a_blurb(mood, content)
    # The << means add to the end of the array
    @blurbs << Blurb.new(mood, content)
end

def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
        t.time
    }.reverse.each { |t|
        puts "#{t.content.ljust(40)} #{t.time} #{t.moodify}"
    }
    end
end

myapp = Blurbalizer.new "The Big Blurb"

myapp.add_a_blurb :moody, "Add Blurb here"
myapp.add_a_blurb :sad, "Today Mount Hood Was Stolen!"
myapp.add_a_blurb :happy, "It was stolen by a giraffe !!"

myapp.show_timeline