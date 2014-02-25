class Employee < ActiveRecord::Base
	has_many :jobseekers, :dependent => :destroy
end
