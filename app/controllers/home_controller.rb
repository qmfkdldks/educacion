class HomeController < ApplicationController
  def index
  	@posts = Post.order(:created_at).last(6)
  end
end
