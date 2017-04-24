module BooksHelper

  # Name: authors_links
  # Arguments: book(record)
  # Description: Method to generate anchor tags of html, in order to evaluate
  # a collection of links generating the names of the authors of a book.
  def authors_links(book)
    links = []
    book.authors.each do |author|
      links << content_tag(:a, author.fullname, href: author_path(author))
    end
    links
  end
end

