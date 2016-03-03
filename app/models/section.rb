class Section < ActiveRecord::Base
  belongs_to :standard
  has_many :students

  def display_name
    "#{self.standard.name} - #{self.name}"
  end
end
