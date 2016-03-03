class House < ActiveRecord::Base
  has_many :students, dependent: :destroy

  validates(:name, presence: true)

end
