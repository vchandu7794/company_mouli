require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

it "should have proper validations" do
	@name = Name.create(:name=>"chandu",:description=>"trainee", :email=>"cm@gmail.com" , password: "123456")
end 


end
