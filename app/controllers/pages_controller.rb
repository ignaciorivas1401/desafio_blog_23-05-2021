class PagesController < ApplicationController
  
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.create(title: params[:title],
      content: params[:content],
      image_url: params[:image_url])  
  end

  def dashboard
    @post = Post.new
  end

end
