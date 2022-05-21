class Article < ApplicationRecord
# mode kosong ini berfungsi untuk
# komunikasi dengan table dan ngasih getter dan setter
 
  # Validations; Presence = No NIL
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 } 
end