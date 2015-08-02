require_relative "entry"
require "csv"

class AddressBook
	attr_accessor :entries, :index
  
    def initialize
  	@entries = []
  	@index = index
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

	def import_from_csv(file_name)
     csv_text = File.read(file_name)
     csv = CSV.parse(csv_text, headers: true, skip_blanks: true)
 # #8
     csv.each do |row|
       row_hash = row.to_hash
       add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
     end

  end

  	    def binary_search(name)
 # #1
     lower = 0
     upper = entries.length - 1

 # #2
     while lower <= upper
 # #3
       mid = (lower + upper) / 2
       mid_name = entries[mid].name
 
 # #4
       if name == mid_name
         return entries[mid]
       elsif name < mid_name
         upper = mid - 1
       elsif name > mid_name
         lower = mid + 1
       end
     end

 # #5
     return nil
   end

    def iterative_search(name)

    	index >= 0
		@entries.each do |entries|
			if name == index
				break
			return entries[index]
			elsif name != index
				return nil
			end
			
		end
    	return nil
    end

	def delete_entry(entry)
		# @address_book.delete_entry(entry)
		@entries.delete(entry)
	end

	def find_entry(index)
		
		@entries.each do |index|
			if @entries.include?(index) then
				
				puts "Name: #{@name}\nPhone Number: #{@phone_number}\nEmail: #{@email},\nIndex: #{index}"
			else
				puts "Number not found"
			end
		  end
		  @entries_book.entries.index(index)
	end
end

	  
   

  


   



	
	
	
  

  

