FactoryBot.define do
  factory :transaction do
    name { 'Dinner' }
    price { 1100.2 }
    description { 'food dinner 1' }
    image { 'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1' }
  end

  factory :user do
    name { 'josh' }
    email { 'josuebatey19@gmail.com' }
    password { '000000' }
  end

  factory :category do
    id { 1 }
    name { 'Dinner' }
    description { 'food dinner 1' }
    image { 'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1' }
  end
end
