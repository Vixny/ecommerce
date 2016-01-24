class Customer < ActiveRecord::Base
  searchkick 
  belongs_to :admin
end
