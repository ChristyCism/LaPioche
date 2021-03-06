class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, class_name: 'Review', foreign_key: 'reviewee_id', dependent: :destroy
  has_many :bookings, class_name: 'Booking', foreign_key: 'client_id'
  has_many :bookings, class_name: 'Booking', foreign_key: 'farmer_id'
  has_many :dispos, class_name: 'Dispo', foreign_key: 'farmer_id'
  has_many :messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :messages, class_name: 'Message', foreign_key: 'receiver_id'

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :city, presence: true
  validates :bio, presence: true
  validates :isFarmer, inclusion: { in: [true, false] }

  scope :farmer, -> { where(isFarmer: true) }
  scope :client, -> { where(isFarmer: false) }

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  def to_s
    first_name
  end
end
