class User < ApplicationRecord
  has_many :discussions
  has_many :messages
end
