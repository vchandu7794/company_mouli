require 'rails_helper'

RSpec.describe Article, type: :model do


it "should have proper validations" do
	@name = Name.create(:name=>"chandu",:description=>"trainee", :email=>"cm@gmail.com" , password: "123456")
end 


end