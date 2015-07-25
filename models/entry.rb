class Entry
	attr_accessor :name, :phone_number, :email
	def initialize(name, phone_number, email)
		@name, @phone_number, @email = name, phone_number, email
	end

	def to_s
		"Name: #{@name}\nPhone Number: #{@phone_number}\nEmail: #{@email}"
	end
end


# class Index < Entry
# 	attr_accessor :name, :phone_number, :email, :index
# 	def initialize (name, phone_number, email, index)
# 		@name, @phone_number, @email, @index = name, phone_number, email, index
# 	end

# 	def to_ind
# 		"Name: #{@name}\nPhone Number: #{@phone_number}\nEmail: #{@email},\nIndex: #{index}"
# 	end
#    end
  

 

