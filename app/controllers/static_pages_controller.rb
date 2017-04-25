class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      # abort @feed_items.inspect
    end
    @microposts  = Micropost.limit(3)
    @users  = User.all
    # abort @microposts.inspect
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
