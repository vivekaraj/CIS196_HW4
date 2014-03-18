class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :jobseekers, :dependent => :destroy
	validates :name, presence:true
	validates :name, length: {within: 3..40}
	validates :name, uniqueness:true
end
