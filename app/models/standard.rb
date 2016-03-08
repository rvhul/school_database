class Standard < ActiveRecord::Base
  has_many :sections, dependent: :destroy
  has_many :students, through: :sections

  validates(:name, presence: true)

end
