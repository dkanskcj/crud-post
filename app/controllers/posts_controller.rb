class PostsController < ApplicationController
    #create
    def new
    end
    def create
        @post = Post.new
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/view/#{@post.id}"
    end
    # read
    def all_view
        @posts=Post.all
    end
    
    def view
        @post = Post.find(params[:post_id])
    end
    def delete
        @post = Post.find(params[:post_id])
        @post.delete
        redirect_to '/'
    end
    def edit
       @post = Post.find(params[:post_id])
    end
    
    def update
        @post = Post.find(params[:post_id])
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/view/#{@post.id}"
        
    end
    
end
