class Owner < ActiveRecord::Base
  ####################
  #for implicit join table
  has_and_belongs_to_many :homes

  ####################
  #for explicit join table
  #has_many :ownerships
  #has_many :homes, :through => :ownerships
end