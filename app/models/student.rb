class Student < ActiveRecord::Base
  belongs_to :section
  belongs_to :house
end
