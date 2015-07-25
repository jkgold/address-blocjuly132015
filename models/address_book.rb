require_relative "entry.rb"
require "csv"

class AddressBook
	attr_accessor :entries
  
    def initialize
  	@entries = []
	end
	
	def add_entry(name, phone, email)
		index = 0
		@entries.each do |entry|
			if name < entry.name
				break
			end
			index +=1
		end
		# @address_book.add_entry(name, phone, email)
		@entries.insert(index, Entry.new(name, phone, email))
	end

	def import_form_csv(file_name)
		# implementation goes here
	end
  end



	def delete_entry(entry)
		# @address_book.delete_entry(entry)
		@entries.delete(entry)
	end

	def find_entry(index)
		
		@entries.each do |index|
			if @entries.include?(index) then
				prints "Name: #{@name}\nPhone Number: #{@phone_number}\nEmail: #{@email},\nIndex: #{index}"
			else
				prints "Number not found"
			end
		  end
		  #@address_book.find_entry(index)
	end

	  
  	
			

  


   



	
	
	
  

  

