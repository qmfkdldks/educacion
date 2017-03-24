class HomeController < ApplicationController
  def index
  	@posts = Post.order(created_at: :desc).first(6)
  end
end
