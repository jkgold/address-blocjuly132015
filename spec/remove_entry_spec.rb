require_relative '../models/remove_entry.rb'

RSpec.describe RemoveEntry do 
	context "attributes" do
		
      it "should respond to entries" do
		remove = RemoveEntry.new
		expect(remove).to respond_to(:entries)
	  end
   end

   	context "#remove_entry" do
   		it "removes only one entry from the address book" do
   			remove = RemoveEntry.new
   			remove.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

   			expect(remove.entries.size).to eq 1
   		end

   		it "removes the correct information from entries" do
   			remove = RemoveEntry.new
   			remove.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
   			remove_entry = remove.entries[0]

   			expect(remove_entry.name).to eq "Ada Lovelace"
   			expect(remove_entry.phone_number).to eq '010,012,1815'
   			expect(remmove_entry.email).to eq 'augusta.king@lovelace.com'
   		end
   	end
end
