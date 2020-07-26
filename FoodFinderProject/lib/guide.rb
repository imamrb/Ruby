require 'restaurant'

class Guide
    class Config
        @@actions = ['list', 'find', 'add', 'quit']
        def self.actions; @@actions; end
    end 
    def initialize(path=nil)
        Restaurant.filepath = path

        if Restaurant.file_usable?
            puts "Found restaurant file."
        elsif Restaurant.create_file 
            puts "Created restaurant file"
        else
            puts "Exiting\n\n"
            exit!
        end 
    end

    def launch!
        introduction
        result = nil
        until result == :quit
            action = get_action
            result = do_action(action)
        end 

        connclusion
    end

    def get_action
        action = nil
        # Keeping asking for user input until valid action
        until Guide::Config.actions.include?(action)
            puts "Actions: " + Guide::Config.actions.join(", ") if action
            print "> " 
            user_response = gets.chomp
            action = user_response.downcase.strip
        end 
        return action
    end 

    def do_action(action)
        case action
        when 'list'
            puts "Listing ...."
        when 'find'
            puts "Finding...."
        when 'add'
            puts "Adding..."
        when 'quit'
            return :quit
        else
            puts "\nSorry, this command is not available!
            \nOnly Available commands: list find add quit"
        end 
    end

    def introduction
        puts "\n\n <<<<< Welcome to the Food Finder >>>>>>\n\n"
        puts "This is an interactive guide to help you find the food you want\n\n"
    end

    def connclusion
        puts "\n <<<<GoodBye and Bon Appetit!>>>>\n\n\n"
    end
end