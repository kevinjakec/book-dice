json.extract! @book, :id, :title, :author, :cover_image, :rating, :publish_date, :publisher, :isbn_number, :detailed_description

json.brief_description @book.brief_description

json.genre do
  json.extract! @book.genre, :id, :name
end

json.reviews @book.reviews, :id, :body

json.submitted_by do
  json.extract! @book.submitted_by, :id, :name
end