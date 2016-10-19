require 'rails_helper'

RSpec.feature "User creates and sees a song" do
  scenario "they click new song link" do
    artist = create(:artist)

    visit artist_path(artist)
    click_on "New song"

    expect(current_path).to eq("/artists/#{artist.id}/songs/new")
  end

  scenario "user creates a new song through a form" do
    artist = create(:artist)
    song_title = "Happy Birthday"

    visit "artists/#{artist.id}/songs/new"
    fill_in "song_title", with: song_title
    click_on "Create Song"

    expect(page).to have_content song_title
    expect(page).to have_link artist.name, href: artist_path(artist)
  end

  context "User submits a song with invalid data" do
    scenario "they see an error message" do
      artist = create(:artist)

      visit "artists/#{artist.id}/songs/new"
      click_on "Create Song"

      expect(page).to have_content "Title can't be blank"
    end
  end

end
