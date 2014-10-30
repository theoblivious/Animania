require 'rails_helper'

feature "Front Page " do  # 'manage' is the CRUD

  scenario "A user can see the front page" do
    visit root_path

    expect(page.find('h1')).to have_content(/Animania: Learn Japanese Through the Power of Anime/)
    expect(page.find('h2')).to have_content(/Choose Anime/)
    # expect(page).to have_no_content("No posts")

  end
end
