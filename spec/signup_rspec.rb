require "sepc_helper"
require "signup"
describe User do
    regex_number = /[0-9]/
    regex_letters = /[A-Za-z]/
    regex_email = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    invalid_input = "qw98e4123123"
    
    us=User.new

    it "e-mail is valid" do
        expect(us.email).to match(regex_email)
        expect(us.email).not_to match(" ")
        expect(us.email).not_to be_empty
        expect(us.email).not_to match("@@.@_")
        expect(us.email).to be_an_instance_of(String)
    end
    it "password is valid" do
        expect(us.password).to match(regex_number) and match(regex_letters)
        expect(us.password).not_to be_empty
        expect(us.password).not_to match("123456")
        expect(us.password).not_to match("abcde")
        expect(us.password).not_to match("")
    end
end