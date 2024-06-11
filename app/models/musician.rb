class Musician < ApplicationRecord
  has_many :instruments, as: :instrumentable
end