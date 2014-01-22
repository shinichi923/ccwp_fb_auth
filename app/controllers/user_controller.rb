class UserController < ApplicationController
  def friend_list
  	@graph = Koala::Facebook::API.new(current_user.oauth_token)
  	@friends = @graph.get_connection("me", "friends")
  end
end
