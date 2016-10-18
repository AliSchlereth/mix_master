require 'rails_helper'

RSpec.feature "User can delete a current artist" do
  scenario "an artist deletes an artist from show page" do
    artist1 = create(:artist)
    artist2 = create(:artist)

    visit "/artists/#{artist1.id}"
    click_on "Delete"

    expect(page).to have_content("Name 2")
  end
end
