json.extract! review, :id, :reviewer_id, :body, :comments_id, :created_at, :updated_at
json.url review_url(review, format: :json)
