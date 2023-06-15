require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Author", with: @book.author
    fill_in "Cover image", with: @book.cover_image
    fill_in "Detailed description", with: @book.detailed_description
    fill_in "Genre", with: @book.genre_id
    fill_in "Isbn number", with: @book.isbn_number
    fill_in "Publish date", with: @book.publish_date
    fill_in "Publisher", with: @book.publisher
    fill_in "Rating", with: @book.rating
    fill_in "Reviews", with: @book.reviews_id
    fill_in "Submitted by", with: @book.submitted_by_id
    fill_in "Title", with: @book.title
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Author", with: @book.author
    fill_in "Cover image", with: @book.cover_image
    fill_in "Detailed description", with: @book.detailed_description
    fill_in "Genre", with: @book.genre_id
    fill_in "Isbn number", with: @book.isbn_number
    fill_in "Publish date", with: @book.publish_date
    fill_in "Publisher", with: @book.publisher
    fill_in "Rating", with: @book.rating
    fill_in "Reviews", with: @book.reviews_id
    fill_in "Submitted by", with: @book.submitted_by_id
    fill_in "Title", with: @book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
