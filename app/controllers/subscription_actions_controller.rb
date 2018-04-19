class SubscriptionActionsController < ApplicationController
  def follow
  	current_user.subscriptions << Subscription.create(author: params[:author])
  	redirect_to :back
  end

  def unfollow
  	current_user.subscriptions.find_by(author: params[:author]).destroy
  	redirect_to :back
  end
end
