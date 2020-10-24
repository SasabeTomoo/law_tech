FactoryBot.define do
  factory :user, class: User do
    id  { 1 }
    name { 'satou' }
    email { 'satou@gmail.com' }
    password { 'satousan' }
    password_confirmation { 'satousan' }
    admin { true }
  end
end
