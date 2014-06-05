class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation,
                  :remember_me, :github, :nickname, :name,
                  :site, :rubyist_since

  validates :github, :uniqueness => true, :format => { :with => /^[-\w]*$/, :allow_blank => true }
  validates :nickname, :uniqueness => true, :presence => true

end

