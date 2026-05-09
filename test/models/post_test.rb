require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Test Post", content: "Test content for the post")
  end

  test "Should be not save post without title" do
    post = Post.new
    assert_not post.save, "Save the post without title"
  end

  test "Should be not save post wihout content" do
    post = Post.new
    assert_not post.save, "Save the post without content"
  end

  test "Should be save post with title and content" do
    post = Post.new(title: "Teste insert post", content: "Teste content for the post")
    assert post.save, "Failed to save post with title and content"
  end
  # test "should be valid with title and content" do
  #   assert @post.valid?
  # end

  # test "title should be present" do
  #   @post.title = ""
  #   assert_not @post.valid?
  # end

  # test "content should be present" do
  #   @post.content = ""
  #   assert_not @post.valid?
  # end

  # test "title should not be too long" do
  #   @post.title = "a" * 256
  #   assert_not @post.valid?
  # end

  # test "title should not exceed database limit" do
  #   @post.title = "a" * 255
  #   assert @post.valid?
  # end

  # test "should save post with valid attributes" do
  #   assert_difference("Post.count", 1) do
  #     @post.save
  #   end
  # end

  # test "should update post" do
  #   @post.save
  #   @post.title = "Updated Title"
  #   assert @post.save
  # end

  # test "should destroy post" do
  #   @post.save
  #   assert_difference("Post.count", -1) do
  #     @post.destroy
  #   end
  # end

  # test "should find post by id" do
  #   @post.save
  #   found_post = Post.find(@post.id)
  #   assert_equal @post.title, found_post.title
  # end

  # test "should order posts by created_at descending" do
  #   first_post = Post.create!(title: "First", content: "Content")
  #   second_post = Post.create!(title: "Second", content: "Content")
  #   assert_equal second_post.id, Post.order(created_at: :desc).first.id
  # end
end
