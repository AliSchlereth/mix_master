FactoryGirl.define do
  factory :artist do
    sequence :name do |n|
      "Name #{n}"
    end
    sequence :image_path do |n|
      "http://#{n}.com"
    end
  end

  sequence :title, ["A", "B", "C"].cycle do |n|
    "#{n} Title"
  end

  factory :song do
    title
    artist
  end

  factory :playlist do
    sequence :name do |n|
      "Playlist #{n}"
    end 
  end

end
