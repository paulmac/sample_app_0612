
class StaticPagesController < ApplicationController

  def home
    if signed_in?
#      @lmicroposts = current_user.microposts
      @micropost = current_user.microposts.build if signed_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
#      @feed_items = lmicroposts.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

end
