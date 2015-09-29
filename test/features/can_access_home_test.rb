require "test_helper"

class CanAccessHomeTest < Capybara::Rails::TestCase


    test "user can signup and see list of tweets" do
    visit root_path
    click_link "Sign Up"

    fill_in "First name", with: "James"
    fill_in "Last name", with: "King"
    fill_in "Email", with: "new-super-fantastic@example.com"
    fill_in "Password", with: "12345678"
    fill_in "Password Confirmation", with: "12345678"
    click_button "Sign Up"

    assert_content page, "MyTwitter"
    assert_content page, "Welcome King, James"
  end


  test "user can signin and follow user" do

    m = User.create! first_name: "Marko", last_name: "Clement", email: "marko@example.com", password: "12345678", photo: "http://knowledgeoverflow.com/wp-content/uploads/2012/07/august311.gif"
    l = User.create first_name: "Linda", last_name: "Mars", email: "linda@example.com", password: "12345678", photo: "http://d236bkdxj385sg.cloudfront.net/wp-content/uploads/2013/08/penny-proud.jpg"
    l.tweets.create post_at: 3.days.ago, text: "Before I refuse to take your questions, I have an opening statement. "

    visit root_path

    fill_in "Email", with: "marko@example.com"
    fill_in "Password", with: "12345678"

    click_button "Sign in"

    assert_content page, "MyTwitter"

    click_link "Follow Mars, Linda"
    save_and_open_page
    assert_content page, "Before I refuse to take your questions, I have an opening statement."
  end



end
