require "rails_helper"

RSpec.describe Book, :type => :model do
  it "validates title" do
    book = Book.new(title: '')
    book.valid?
    book.errors[:title]
  end

  it "Book belongs to a author" do # should belong_to(:author) ?????
    book = Book.new
    author = Author.new
    author.books << book
    expect(book.author).to be author
  end
end
