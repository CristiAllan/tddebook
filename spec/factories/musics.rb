FactoryGirl.define do
  factory :music do
    title {Faker::Name.title}
    author {Faker::Name.name}
    band_id nil
  end
end
