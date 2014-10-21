class Ownership < ActiveRecord::Base
  #this model is only used for a explicit relationship
  #the homes_owners table is used for a implicit relationship (notice it does not have
  #a corresponding model)

  belongs_to :home
  belongs_to :owner
end
