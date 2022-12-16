class QuoteUsername < ActiveRecord::Base
 belongs_to :username 
 belongs_to :quote 
end

# JOIN TABLE 