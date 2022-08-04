class Car < ApplicationRecord
  has_many :trims

  accepts_nested_attributes_for :trims
end
