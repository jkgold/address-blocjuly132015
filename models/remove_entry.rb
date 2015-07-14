require_relative "entry.rb"

class RemoveEntry
	attr_accessor :entries

	def initialize
		@entries = entries
	end
	def remove_entry(name, phone, email)
		@entries.each do |entry|
		@entries.delete Entry.delete(name, phone, email)
		end
	 end
   end