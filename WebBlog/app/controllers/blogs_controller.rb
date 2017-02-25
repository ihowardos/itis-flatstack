class BlogsController < ApplicationController

  expose_decorated :blog
  expose_decorated :blogs, -> { fetch_blogs }

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if blog.save
      redirect_to blog, success: "Blog was successfully created!"
    else
      render :new, warning: "Blog has not been created!"
    end
  end

  def update
    if blog.update
      redirect_to blog, notice: "Blog was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    blog.destroy
    redirect_to root_path, notice: "Blog was successfully destroyed!"
  end

  private

  def fetch_blogs
    blogs = Blog.all
  end

  def blog_params
    params.require(:blog).permit(:title, :text, :password)
  end


end
