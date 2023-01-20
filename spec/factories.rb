FactoryBot.define do
# rubocop:disable Metrics/LineLength
  factory :user do
    name { 'josh' }
    email { 'josuebatey19@gmail.com' }
    password { '000000' }
  end
  # rubocop:enable Metrics/LineLength
end
