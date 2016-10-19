require 'rails_helper'

RSpec.describe Song, type: :model do
  it "is invaild without a title" do
    song = Song.new()

    expect(song).to_not be_valid
  end

  it "is valid with a title" do
    song = Song.new(title: "Ring Around the Rosie")

    expect(song).to be_valid
  end
end
