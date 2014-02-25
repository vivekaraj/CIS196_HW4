class Jobseeker < ActiveRecord::Base
  belongs_to :employee, :dependent => :destroy
end
