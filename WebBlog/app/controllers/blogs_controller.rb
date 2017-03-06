class BlogsController < ApplicationController

  expose_decorated :blog, find_by: :slug
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
    password = Passgen::generate
    blog.password = Digest::MD5.hexdigest(password)
    if blog.save
      redirect_to blog, success: "Блог успешно был создан! Пароль для редактирования: #{password}"
    else
      render :new
    end
  end

  def update
    if blog.password == Digest::MD5.hexdigest(params[:blog][:password])
      if blog.update(blog_params)
        redirect_to blog, success: "Блог успешно отредактирован!"
      else
        render :edit
      end
    else
      redirect_to blog, warning: "Неверный пароль!"
    end
  end

  def destroy
    blog.destroy
    redirect_to root_path, success: "Блог успешно был удален!"
  end

  private

  def fetch_blogs
    blogs = Blog.all
  end

  def blog_params
    params.require(:blog).permit(:title, :text)
  end
end
