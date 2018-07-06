class User < ApplicationRecord
  validates :username, presence: true 
  has_many :authored_polls,
    class_name: :Poll,
    primary_key: :id,
    foreign_key: :user_id
    ## do we need to add null case?
  
  
  
  
end 