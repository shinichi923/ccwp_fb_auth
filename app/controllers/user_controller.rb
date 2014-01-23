class UserController < ApplicationController
	before_action :set_graph
	def friendlists
	  	#@friends = @graph.get_connection("me", "friends")
	  	@friendlists = @graph.get_connection("me", "friendlists")
  	end

  	def members
	  	@fl_id = params[:id]
	  	@fl_name=params[:name]
	  	@friends = @graph.get_connection(@fl_id, "members")
  	end

  	private
  	def set_graph
  		@graph = Koala::Facebook::API.new(current_user.oauth_token)
  	end
end
