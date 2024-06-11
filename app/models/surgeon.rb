class Surgeon < ApplicationRecord
  has_many :instruments, as: :instrumentable
end