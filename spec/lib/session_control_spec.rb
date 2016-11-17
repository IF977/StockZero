require "spec_helper"
require "session_control"

RSpec.describe "routing to home", :type => :routing do
  it "routes /users to users#show" do
      expect(:get => "/")
  end
end

RSpec.describe "routing to products", :type => :routing do
  it "routes /products to products#show" do
      expect(:get => "/products")
      expect(:get => "/login")
  end
end

describe User do
    regex_number = /[0-9]/
    regex_letters = /[A-Za-z]/
    regex_email = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    
    
    
    us=User.new
    
    it "Instance of user" do
        expect(us).to be_an_instance_of(User)
    end
    
    it "e-mail is valid" do
        expect(us.email).to match(regex_email)
        expect(us.email).not_to be_empty
        expect(us.email).not_to match("@@.@_")
        expect(us.email).to be_an_instance_of(String)
    end
    
    it "password is valid" do
        expect(us.password).to match(regex_number) and match(regex_letters)
        expect(us.password).not_to be_empty
        expect(us.password).not_to match("13253123")
        expect(us.password).not_to match("abcde")
       
    end
    
     it "password is valid" do
        expect(us.password_confirmation).to match(regex_number) and match(regex_letters)
        expect(us.password_confirmation).not_to be_empty
        expect(us.password_confirmation).not_to match("13253123")
        expect(us.password_confirmation).not_to match("abcde")
       
    end
end

RSpec.describe "routing to products", :type => :routing do
  it "routes /products/ to products#show" do
    expect(:get => "/products#show")
  end
end

