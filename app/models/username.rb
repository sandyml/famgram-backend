class Username < ActiveRecord::Base
 has_many :quotes, dependent: :destroy
end