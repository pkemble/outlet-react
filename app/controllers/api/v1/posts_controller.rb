class Api::V1::PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = PostSerializer.new(Post.all)
        render json: @posts
    end

    def show
        if @post
            render json: @post
        else
            render json: @post.errors
        end
    end

    def new
        @post = Post.new
    end

    def edit
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            render json: @post
        else
            render json: @post.errors
        end
    end

    def update
    end

    def destroy
        @post.destroy
        render json: { notice: 'Post was destroyed.'}
    end

    private
        def set_post
            @post = Post.find(params[:id])
        end

        def params
            params.permit(:title, :content, :post_date, :enclosure, :notebook_id)
        end

end
