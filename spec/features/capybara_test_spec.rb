require 'rails_helper'

feature "Front Page " do  # 'manage' is the CRUD

  scenario "A user can see the front page" do
    visit root_path

    expect(page.find('h1')).to have_content(/Animania: Learn Japanese Through the Power of Anime/)
    expect(page.find('h2')).to have_content(/Choose Anime/)
    # expect(page).to have_no_content("No posts")


  end
  scenario "A user can click on the Choose Anime" do
    visit root_path
    click_link ('Choose Anime')

    expect(current_path).to eq(animes_path)
    expect(page.find('h1')).to have_content(/Listing animes/)


  end
  feature "Anime Selection page" do
    scenario "A user can see the animes page" do

      visit animes_path


      expect(current_path).to eq (animes_path)
      expect(page.find('td')).to have_content(/Show Questions/i)
      expect(page.find('td')).to have_content(/Edit/i)
      expect(page.find('td')).to have_content(/Destroy/i)
    end

    scenario "A user can click Show Questions"do
      visit animes_path

      expect(page.find('td')).to have_content(/Show Questions/i)
   end

  end
end
