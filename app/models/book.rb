class Book < ActiveRecord::Base
  # sprawdzamy czy jest treść w tym co podaje użytkownik
  validates :title, presence: true, length: { minimum: 3 }
end
