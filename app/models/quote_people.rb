class QuotePeople < ActiveRecord::Base
 belongs_to :person
 belongs_to :favorite
end