class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  # GET /reviews or /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1 or /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.build(review_params)
    @review.reviewer = current_user

    respond_to do |format|
      if @review.save
        format.html { redirect_to book_path(@book), notice: 'Review created successfully.' }
      else
        format.html { render 'books/show' }
      end
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    @book = Book.find(params[:book_id])

    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to book_path(@book), notice: 'Review updated successfully.' }
      else
        format.html { render 'books/show' }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @book = Book.find(params[:book_id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to book_path(@book), notice: "Review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit( :body)
    end
end
