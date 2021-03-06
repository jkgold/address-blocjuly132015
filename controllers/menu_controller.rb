  # #1
  require_relative "../models/address_book"
 
 class MenuController
   attr_accessor :address_book
 
   def initialize
     @address_book = AddressBook.new
   end
 
   def main_menu
 # #2
     puts "Main Menu - #{@address_book.entries.count} entries"
     puts "1 - View all entries"
     puts "2 - Create an entry"
     puts "3 - Search for an entry"
     puts "4 - View Entry Number n"
     puts "5 - Import entries from a CSV"
     puts "6 - Exit"
     print "Enter your selection: "
 
 # #3
     selection = gets.to_i
     case selection
     when 1
     	system "clear"
     	view_all_entries
     	main_menu
     when 2
     	system "clear"
     	create_entry
     	main_menu
     when 3
     	system "clear"
     	search_entries
     	main_menu
     when 4
     	system "clear"
     	find_index
      main_menu

     when 5
     	system "clear"
     	read_csv
     	main_menu
     when 6 
     	puts "Good-bye!"

     	exit(0)

     else
     	system "clear"
     	puts "Sorry, that is not a valid input"
     	main_menu
   end
 end

 	def view_all_entries

 		@address_book.entries.each do |entry|
 			system "clear"
 			puts entry.to_s

 			entry_submenu(entry)
 		end

 		system "clear"
 		puts "End of entries"
   end

 	def create_entry

 		system "clear"
 		puts "New AddressBloc Entry"

 		print "Name: "
 		name = gets.chomp
 		print "Phone number: "
 		phone = gets.chomp
 		print "Email: "
 		email = gets.chomp

 		@address_book.add_entry(name, phone, email)

 		system "clear"
 		puts "New entry created"
   end

   def remove_entry(entry)

      system "clear"
      print "Are you sure you want to delete this entry?"

    @address_book.delete_entry(entry)

      system "clear"
      print "Entry removed"
   end


 	def search_entries
   end

    def find_index

    	
      system "clear"
    	puts "Enter Entry Number"

      num = gets.chomp.to_i

    	puts "You entered #{num}"
      index = num
    
      system "clear"
        @address_book.entries.index(index)
        puts "Name: #{@name}\nPhone Number: #{@phone_number}\nEmail: #{@email},\nIndex: #{index}"

     
   end
  end



 	def read_csv
   end

   def entry_submenu(entry)

   	puts "n -next entry"
   	puts "d - delete entry"
   	puts "e - edit this entry"
   	puts "m - return to main menu"

   	selection = gets.chomp

   	case selection

   	when "n"

   	when "d"
      system "clear"
      remove_entry(entry)

   	when "e"

   	when "m"
   		system "clear"
   		main_menu
   	else
   		system "clear"
   		puts "#{selection} is not a vaild input"
   		entries_submenu(entry)
 	  end
  end




 



  