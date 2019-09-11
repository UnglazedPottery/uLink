class PostsController < ApplicationController

    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end

	def create
		@post = Post.create({
            likes: 0,
            topic_id: params[:id],
            url: params[:url],
            note: params[:note]
		})
		
	  redirect_to "/topics/#{params[:id]}"
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])
      @post.update(post_params)
      @post.save
	  redirect_to post_path(@post)
	end

	private

		def post_params
			params.require(:post).permit(:note, :url)
        end
        
end
