
class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  #validates_presence_of     :password, :if => :password_required?
  #validates_confirmation_of :password, :if => :password_required?, :message => "Your password and confirmation must match."
  #validates_format_of       :password, :with => /^[\S{4,}$]\*z/, :message => "Your password must be at least 4 characters and contain no spaces or tabs.", :if => :password_required?

  #def password_required?
    #self.new_record?
  #end
end
