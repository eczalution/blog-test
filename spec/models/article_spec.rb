require "rails_helper"

RSpec.describe Article, :type => :model do
  it "Validation Error title" do
    article = Article.new(title: '')
    article.valid?
    article.errors[:title]
  end

  it "Validation Error lenghr" do
    article = Article.new(title: 'as')
    article.valid?
    article.errors[:title]
  end

  it "is valid with valid attributes" do
    expect(Article.new(title: 'Anything')).to be_valid
  end

  it "Article has many a comments" do
    comment = Comment.new
    article = Article.new
    article.comments << comment
    expect(comment.article).to be article
  end
end
