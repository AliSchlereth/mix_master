FactoryGirl.define do
  factory :artist do
    sequence :name do |n|
      "Name #{n}"
    end
    sequence :image_path do |n|
      "http://#{n}.com"
    end 
  end
end
