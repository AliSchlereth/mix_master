require 'rails_helper'

RSpec.feature "User visits a playlist" do
  scenario "they see all songs listed" do
    playlist_one, playlist_two = create_list(:playlist, 2)

    visit playlists_path

    expect(page).to have_content(playlist_one.name)
    expect(page).to have_content(playlist_two.name)
  end
end
