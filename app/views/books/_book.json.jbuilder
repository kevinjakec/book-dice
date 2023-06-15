json.extract! book, :id, :title, :author, :genre_id, :cover_image, :brief_description, :rating, :detailed_description, :publish_date, :publisher, :isbn_number, :reviews_id, :submitted_by_id, :created_at, :updated_at
json.url book_url(book, format: :json)
