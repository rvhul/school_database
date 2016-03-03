class Standard < ActiveRecord::Base
  has_many :sections, dependent: :destroy

  validates(:name, presence: true)

end
