class Service < ActiveRecord::Base
  validates :code, :scode, :sname, :charges, presence: true
  # def self.search(query)
  #   where("sname like ?", "%#{query}%") 
  # end
  searchable do
  	text :code, :scode, :sname, :charges
  end
end
