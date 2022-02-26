class Friend < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :twitter, presence: true
  validates :email, presence: true, format: { with: /\A[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com+\z/, message: "mail format follow : @gmail.com" }
  validates :phone, presence: true
  
end
