class HomeController < ApplicationController
  def index
  end

  def my_feed
  end

  def author_page
  	@author = params[:author]

  	if user_signed_in?
  		if current_user.author_is_followed?(@author)
  			@follow_unfollow = 'unfollow'
  		else
  			@follow_unfollow = 'follow'
  		end
  	end
  end
end
