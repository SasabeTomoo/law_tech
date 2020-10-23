FactoryBot.define do

  factory :transaction_first, class: Transaction do
    user_name { "satou" }
    user_adress { "satou" }
    rent_adress { "satou" }
    rent_name { "satou" }
    deposit_amount { 120000 }
    destination { "satou" }
    deadline { "10" }
    contacts_date { 20190303 }
    returns_date { 20190304 }
    contacts_date { 20190305 }
    make_date { 20190306 }
    return_deposit { 20000 }
  end
end
