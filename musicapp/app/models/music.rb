class Music < ApplicationRecord
  has_and_belongs_to_many :instruments
end
