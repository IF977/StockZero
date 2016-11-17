class User
    attr_accessor :email, :password, :password_confirmation
    def initialize
        @email = "lff3@cin.ufpe.br"
        @password = "123456"
        @password_confirmation = "123456"
    end
end