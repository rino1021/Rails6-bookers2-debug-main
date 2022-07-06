class RelationshipsController < ApplicationController


  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end



   # フォロー一覧
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end
   # フォロワー一覧
  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end

   def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
   end


private
def relationship_params
    params.require(:relationship).permit(:follower_id,:followed_id)
end

end
