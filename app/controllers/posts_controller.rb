class PostsController < ApplicationController
  before_action :member_check, only: [:new, :destroy]

  def index
  end

  def new
  end
end
