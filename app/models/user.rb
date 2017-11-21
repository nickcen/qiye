class User < ApplicationRecord
  def to_s
    "User #{self.id}"
  end
end
