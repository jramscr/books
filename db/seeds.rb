books = ActiveSupport::JSON.decode(File.read('db/seeds/books.json'))
books.each do |book_params|
  book_authors_attributes = []
  publisher = PublisherHouse.find_or_create_by(name: book_params['publisher'])

  book_params['book_authors'].each do |author_name|
    parsed_author_name = author_name.gsub(/\s+/m, ' ').strip.split(" ")
    author = Author.find_or_create_by(first_name: parsed_author_name[0], last_name: parsed_author_name[1])
    book_authors_attributes << { author_id: author.id }
  end

  Book.create(
    title: book_params['title'],
    pages: book_params['pages'],
    cover: book_params['cover'],
    published_at: book_params['published_at'],
    publisher_house_id: publisher.id,
    book_authors_attributes: book_authors_attributes
  )
end

