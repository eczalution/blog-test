require "rails_helper"

RSpec.describe Comment, :type => :model do
  it "Comment belongs to a article" do # should belong_to(:article) ?????
    comment = Comment.new
    article = Article.new
    article.comments << comment
    expect(comment.article).to be article
  end
end
