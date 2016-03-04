class Section < ActiveRecord::Base
  belongs_to :standard
  has_many :students, dependent: :destroy

  validates(:name, presence: true)

  def display_name
    "#{standard.name} - #{self.name}"
  end

end
