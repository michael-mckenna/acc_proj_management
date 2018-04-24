FactoryBot.define do
    factory :project do
        name        "iOS App" 
        description "Test description"
        is_accepted  true
    end
end

FactoryBot.define do
    factory :user do
        name        "Test Name" 
        is_admin  false
    end
end