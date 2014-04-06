class Service < ActiveRecord::Base
  def self.search(query)
    where("sname like ?", "%#{query}%") 
  end
end
