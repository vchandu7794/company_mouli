require 'spec_helper'
require 'rails_helper'

RSpec.describe Article, type: :model do


  it "should have proper validations" do
		@name = Article.create(:name=>"chandu",:description=>"trainee", :email=>"cm@gmail.com" , password: "123456")
		expect(@name.id).not_to be_nil
	end

	it "should give error in case of no proper validations" do
		@name = Article.create(:name=>"cm",:description=>"trainee", :email=>"cm@gmail.com" , password: "123456")
		expect(@name.id).to be_nil
    end

  it "should have minimum 5 letters for name" do
		@name = Article.create(:name=>"mouli",:description=>"trainee", :email=>"cm@gmail.com" , password: "123456")
		expect(@name.id).not_to be_nil
	end


	it "should not create if name has less than 5 chanracters" do
		@name = Article.create(:name=>"tim",:description=>"trainee", :email=>"cm@gmail.com" , password: "123456")
		expect(@name.id).to be_nil
  end

	it "should only save if the description is present" do
		@name = Article.create(:name=>"mouli",:description=>"engineer", :email=>"cm@gmail.com" , password: "123456")
		expect(@name.id).not_to be_nil
	end

	it "should not save if the description is not present" do
		@name = Article.create(:name=>"mouli", :email=>"cm@gmail.com" , password: "123456")
		expect(@name.id).to be_nil
	end

	it "should only save if the email format is correct" do
		@name = Article.create(:name=>"mouli", :description=>"trainee", :email=>"mouli@kreatio.com" , password: "123456")
		expect(@name.id).not_to be_nil
	end

	it "should not save if the email format is wrong" do
		@name = Article.create(:name=>"mouli", :description=>"trainee", :email=>"cm" , password: "123456")
		expect(@name.id).to be_nil
	end

	it "should only save if the password is more than 5 characters" do
		@name = Article.create(:name=>"mouli", :description=>"trainee", :email=>"cm@gmail.com" , password: "123456")
		expect(@name.id).not_to be_nil
  end

	it "should not save if the password is less than 6 characters" do
		@name = Article.create(:name=>"mouli", :description=>"trainee", :email=>"cm" , password: "1234")
		expect(@name.id).to be_nil
	end

end