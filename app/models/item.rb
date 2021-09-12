class Item < ApplicationRecord
  validates_presence_of :name, :quantity

  belongs_to :user

end
