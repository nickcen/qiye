class User < ApplicationRecord
  has_many :orders
  has_one :user_card

  def to_s
    "User #{self.id}"
  end
end
