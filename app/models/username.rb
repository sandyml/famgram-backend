class Username < ActiveRecord::Base
 has_many :quote_usernames
 has_many :username, through: :quote_usernames
end