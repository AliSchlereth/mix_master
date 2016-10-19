require 'rails_helper'

RSpec.feature "User views all artists" do
  scenario "they visit the artists index" do
    artist1 = create(:artist)
    artist2 = create(:artist)

    visit '/artists'

    expect(page).to have_content(artist1.name)
    expect(page).to have_content(artist2.name)
  end
end

# RSpec.feature "User views all artists" do
#   scenario "they visit the artists index" do
#     artist1 = Artist.create(name: "Ali", :image_path "http://1.com")
#     artist2 = Artist.create(name:)
#
#     visit '/artists'
#
#     expect(page).to have_content("Name 1")
#     expect(page).to have_content("Name 2")
#   end
# end
