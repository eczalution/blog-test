require "rails_helper"

RSpec.describe Author, :type => :model do
  it "validates name" do
    author = Author.new(name: '')
    author.valid?
    author.errors[:name]
  end

  it "validates lenghr" do
    author = Author.new(name: 'a')
    author.valid?
    author.errors[:name]
  end

  it "is valid with valid attributes" do
    expect(Author.new(name: 'String')).to be_valid
  end

  it "Author has many a books" do
    book = Book.new
    author = Author.new
    author.books << book
    expect(book.author).to be author
  end
end
