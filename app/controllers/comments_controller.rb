class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:review_id])
    @comment = @review.comments.build(comment_params)
    @comment.commenter = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to book_path(@book), notice: 'Comment created successfully.' }
      else
        format.html { render 'books/show' }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:review_id])

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to book_path(@book), notice: 'Comment updated successfully.' }
      else
        format.html { render 'books/show' }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @book = Book.find(params[:book_id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to book_path(@book), notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:body)
    end
end
