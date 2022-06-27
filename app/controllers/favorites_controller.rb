class FavoritesController < ApplicationController

def create
  favorite = current_user.favorites.new(post_image_id: post_image.id)
  favorite.save
  redirect_to books_path(params[:user_id])
end

def destroy
  favorite = current_user.favorites.find_by(post_image_id: post_image.id)
  favorite.destroy
  redirect_to books_path(params[:user_id])
end

end

