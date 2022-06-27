class Post < ApplicationRecord
belongs_to :user
belongs_to :post_image

def favorited?(user)
   favorites.where(user_id: user.id).exists?
end
end
