FactoryGirl.define do
  factory :ticket do
    issue "MyString"
    description "MyText"
    level "MyString"
    image "MyString"
    status false
    user nil
  end
end
