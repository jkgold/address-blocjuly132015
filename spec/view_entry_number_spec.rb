# require_relative '../models/view_entry_number.rb'

RSpec.describe ViewEntryNumber do 
	context "attributes" do 

		it "should allow the user to pull up the entry with the index number" do
			view = ViewEntryNumber.new
			expect(view).to respond_to(:index)
		end
	end
end
