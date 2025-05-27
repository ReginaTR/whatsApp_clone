require 'faker'

puts "Creating users..."
10.times do
  User.create!(
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone
  )
end

puts "Creating groups..."
5.times do
  Group.create!(
    name: Faker::Team.name
  )
end

puts "Creating messages..."
senders = User.pluck(:id)

50.times do
  Message.create!(
    body: Faker::Lorem.sentence(word_count: rand(3..12)),
    sender_id: senders.sample,
    sent_at: Faker::Time.backward(days: 14, period: :evening)
  )
end

puts "Seeds created with success!"
