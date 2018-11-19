class Dispo < ApplicationRecord
  belongs_to :farmer, class_name: 'User', foreign_key: 'farmer_id'
end
