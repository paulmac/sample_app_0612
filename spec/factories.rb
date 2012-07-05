FactoryGirl.define do

  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end

  end

# factory_girl/registry.rb:39:in `add_as': 
# Factory already registered: micropost (FactoryGirl::DuplicateDefinitionError)
  factory :micropost do
    content "Lorem ipsum"
    user
  end

end