class Student < ActiveRecord::Base
  belongs_to :section
  belongs_to :house

  validates(:name, presence: true)
  validates(:address, presence: true)
  validates(:house_id, presence: true)
  validates(:section_id, presence: true)
  validates(:gender, presence: true)
  validates(:dob, presence: true)
  validates(:fathers_name, presence: true)
  validates(:emergency_contact, presence: true)
  validates(:blood_type, presence: true)

end
