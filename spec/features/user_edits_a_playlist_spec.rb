require 'rails_helper'

RSpec.feature "User edits a playlist" do

  context "playlists and songs exist" do

    scenario "they can navigate from playlist to edit playlist" do
      playlist = create(:playlist)
      song1, song2 = create_list(:song, 2)
      PlaylistSong.create(playlist_id: playlist.id, song_id: song1.id)

      visit playlist_path(playlist)
      click_on "Edit"

      expect(page).to have_content playlist.name
    end

    scenario "they can enter new playlist information for a current playlist" do
      playlist = create(:playlist)
      song1, song2 = create_list(:song, 2)
      PlaylistSong.create(playlist_id: playlist.id, song_id: song1.id)

      visit edit_playlist_path(playlist)
      fill_in "playlist_name", with: playlist.name
      check "song-#{song2.id}"
      click_on "Update Playlist"

      expect(page).to have_content playlist.name
      expect(page).to have_content song2.title

    end
  end
end
