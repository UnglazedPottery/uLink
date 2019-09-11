class TopicsController < ApplicationController
    def index
        @topics = Topic.all
    end

    # def new
    #     @topic = Topic.new
    # end

    # def create
    #     @topic = Topic.create({
    #         name: params[:name],1
    #     })
    #     redirect_to "/topics"
    # end

    def show
        @topic = Topic.find(params[:id])
    end

    # def edit
        
    #     @topic = Topic.find(params[:id])
    # end

    # def update
    #     @topic = Topic.find(params[:id])
    #     @topic.create({name : params[:name]})
    #     redirect_to "/topics/#{@topic.id}"
    # end

    def html
        render 'htmlPage.html.erb'
    end

    def css 
        @post = Post.new
        @post.likes = 0
        render 'cssPage.html.erb'
    end

    def javascript 
        render 'javascriptPage.html.erb'
    end

end
