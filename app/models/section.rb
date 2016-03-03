class Section < ActiveRecord::Base
  belongs_to :standard
  has_many :students, dependent: :destroy

  validates(:name, presence: true)

  def display_name
    "Section #{self.name} of #{self.standard.name} Standard"
  end

end
