class Favorite < ApplicationRecord

 belongs_to :user
 belongs_to :book
 has_many :book_comments


end
