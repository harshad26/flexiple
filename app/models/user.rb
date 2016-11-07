class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, password_length: 4..8

   

	validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+\.in\z/,
                  message: "Only e-mail IDs on the “.in” domain allowed" }

	validates_format_of :email, :with => /@/

  validates :name, format: { with: /flexiple_+[a-z]/, message: "Must be start with flexiple and Spaces, specialcharacters (except underscore), uppercaseletters not allowed"}

  PASSWORD_FORMAT = /([A-Z])([A-Z])[a-z0-9._%]/

  validates :password, :presence => true,
                       :confirmation => true,
                       :format => {with: PASSWORD_FORMAT}, 
                       :on => :create


end
