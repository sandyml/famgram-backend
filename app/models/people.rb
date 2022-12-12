class People < ActiveRecord::Base 
 has_many :quote_people, dependent: :destroy
 has_many :quotes, through: :quote_people
end

# JOIN table 