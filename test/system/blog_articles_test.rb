require "application_system_test_case"

class BlogArticlesTest < ApplicationSystemTestCase
  setup do
    @blog_article = blog_articles(:one)
  end

  test "visiting the index" do
    visit blog_articles_url
    assert_selector "h1", text: "Blog Articles"
  end

  test "creating a Blog article" do
    visit blog_articles_url
    click_on "New Blog Article"

    fill_in "Content", with: @blog_article.content
    fill_in "Title", with: @blog_article.title
    click_on "Create Blog article"

    assert_text "Blog article was successfully created"
    click_on "Back"
  end

  test "updating a Blog article" do
    visit blog_articles_url
    click_on "Edit", match: :first

    fill_in "Content", with: @blog_article.content
    fill_in "Title", with: @blog_article.title
    click_on "Update Blog article"

    assert_text "Blog article was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog article" do
    visit blog_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog article was successfully destroyed"
  end
end
