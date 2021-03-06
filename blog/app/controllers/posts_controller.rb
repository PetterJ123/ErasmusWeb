class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    # GET /posts
    # GET /posts.json
    def index
      @posts = Post.all
    end

    # GET /posts/1
    # GET /posts/1.json
    def show
      declare_parms
        # Got replaced by the method above, to use the DRY-method of developing
        # @post = Post.find(params[:id])
    end
    # GET /posts/1/edit
    def edit
      declare_parms
        # Got replaced by the method above, to use the DRY-method of developing
        # @post = Post.find(params[:id])
    end

    # GET /posts/new
    def new
      @post = current_user.posts.build
    end

    # POST /posts
    # POST /posts.json
    def create
      @post = current_user.posts.build(post_params)

      respond_to do |format|
        if @post.save
          format.html { redirect_to @post, notice: 'Post was successfully created.' }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new }
          format.json { render json: @post.errors, status: :unprocessable_entity }
          end
      end
  end

    # PATCH/PUT /posts/1
    # PATCH/PUT /posts/1.json
    def update
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to @post, notice: 'Post was successfully updated.' }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /posts/1
    # DELETE /posts/1.json
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      respond_to do |format|
        format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

  private

    def set_post
      unless @post == Post.where(id: params[:post_id]).first
      redirect_to posts_path flash: { alert: "Post doesn't exsist" }
    end
  end

    def post_params
      params.require(:post).permit(:head, :content, :image)
    end

    # Private method just for calling it when needed instead of rewriting. DRY
    def declare_parms
      @post = Post.find(params[:id])
    end
  end
