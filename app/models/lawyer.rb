class Lawyer < ActiveRecord::Base
  validates :name, :location, :code, presence: true
  validates :experience, presence: true, length: { minimum: 1}
  validates :rating, presence: true, length: { minimum: 1, maximum: 2}
  def self.search(query)
    where("name like ? or location like ? or code like ?", "%#{query}%", "%#{query}%", "%#{query}%") 
  end
end
