require 'rails_helper'

RSpec.feature "User visits an edit page" do
  scenario "a user selects an artist to edit from a show page" do
    artist1 = create(:artist)
    artist1_image_path = artist1.image_path

    visit "/artists/#{artist1.id}"
    click_on "Edit"
    fill_in "artist_name", with: "Ali"
    click_on "Update Artist"

    expect(page).to have_content("Ali")
    expect(page).to have_css("img[src=\"#{artist1_image_path}\"]")
  end

end
