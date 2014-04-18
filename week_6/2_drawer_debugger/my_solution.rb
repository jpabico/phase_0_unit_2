# U2.W6: Drawer Debugger

# I worked on this challenge with Christiane Kammerl.
## Directions
=begin 
1. Format the code to indent it properly
2. Debug the program
Run the code from the console. You should encounter 5 errors before it will run completely (excluding the bonus - uncomment the line to work on it). Read each error carefully and fix it. 
3. Ensure each method is working as expected. You may need to create or modify methods to make the program run properly.
4. Write tests using [Driver Test Code](../../references/driver_code.md) or `assert` statements (make sure you have your assert method defined!)
5. Interact with the code by writing at least three more different method calls. Did they return what you expected?
6. [Reflect](../../references/reflection_guidelines.md)
7. Sync your changes (push your solution) to Github
=end

# 2. Original Code

class Drawer

    attr_reader :contents

# Are there any more methods needed in this class?

    def initialize
        @contents = []
        @open = true
    end

    def open
        @open = true
    end

    def close
        @open = false
    end 

    def add_item(item)
        if item.clean == false
            puts "Clean item first!"
        else
            @contents << item
        end
    end

    def remove_item(item = @contents.pop) #what is `#pop` doing?
        @contents.delete(item)
        return item
    end

    def dump  # what should this method return?
       if @contents.empty? == false
           puts "Your drawer is now empty."
           return @contents.clear
       else
           puts "Your drawer is already empty."
           return @contents
       end 
    end

    def view_contents
        if @contents.empty? == true
            puts "Your drawer contains nothing."
        else
            puts "The drawer contains:"
            @contents.each {|silverware| puts "- " + silverware.type }
        end
    end
end

class Silverware
    attr_reader :type, :clean

# Are there any more methods needed in this class?

    def initialize(type)
        @type = type
        @clean = true 
    end

    def eat
        puts "eating with the #{@type}"
        @clean = false
    end
    
    def clean_silverware
        @clean = true
    end
end


knife1 = Silverware.new("knife")
spoon = Silverware.new("spoon")
fork = Silverware.new("fork")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(fork) 
silverware_drawer.view_contents

removed_fork = silverware_drawer.remove_item(fork)
removed_fork.eat
removed_fork.clean_silverware
silverware_drawer.add_item(removed_fork)
silverware_drawer.view_contents

sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)
removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
silverware_drawer.view_contents

removed_spoon = silverware_drawer.remove_item(spoon)
removed_spoon.eat
silverware_drawer.add_item(removed_spoon)


silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?




#BONUS SECTION
 puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
test_fork = Silverware.new("testfork")
p test_fork.class == Silverware

def assert
  raise "Assertion failed" unless yield 
end 

assert { fork.class == Silverware }
assert { silverware_drawer.class == Drawer }
assert { silverware_drawer.class != Silverware }
assert { silverware_drawer.dump.empty? }
assert { silverware_drawer.remove_item("fork") == "fork" }
