json.extract! book, :id, :title, :page_count, :genre, :created_at, :updated_at
json.url book_url(book, format: :json)
