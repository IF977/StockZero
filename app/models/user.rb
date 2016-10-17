class User < ApplicationRecord
    attr_accessor :password
    attr_accessible :name, :email, :password, :password_confirmation
    
    email_regex=/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
    
    validates   :name,    :presence   => true,
                :lenght               => { :maximum => 50 }
                
    validates   :email,   :presence   => true,
                :format               => { :with =>email_regex },
                :uniqueness           => { :case_sensitive => false }
    
    validates :paswword,  :presence   => true,
              :confirmation           => true,
              :lenght                 => { :within => 6..40 }
    
    before_save :encrypt_password
    
    
    def has_password?(submitted_password)
        encryptrd_password == encrypt(submitted_password)
    end
    
    def self.authenticate(email,submitted_password)
        user = find_by_email(email)
        return nil if user.nil?
        return user if user.has_password?(submitted_password)
    end
     
    private
     def encrypt_password
        #generate salt for new user
        self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}--#{password}") if self.new_record?
    
        #encrypt password; store in encrypted_password
        self.encrypted_password = encrypt_passwor
     end
    
    #encrypt with salt
     def encrypt(pass)
        Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
     end
end


