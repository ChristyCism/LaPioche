class Booking < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: 'client_id'
  belongs_to :farmer, class_name: 'User', foreign_key: 'farmer_id'
end
