class Quote < ActiveRecord::Base
 belongs_to :username, dependent: :destroy
 has_many :quotes, through: :username
end

# attr_accessible :username, :quote