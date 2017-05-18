namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Mykola",
                 email: "mykola.matsko@gmail.com",
                 password: "password",
                 password_confirmation: "password",
                 admin: true)
    99.times do |n|
      from  = Faker::Address.city
      to	  = Faker::Address.city
      depart = Faker::Date.forward(300)
      arrival = Faker::Date.forward(300)
      seats = Random.new.rand(1..50)
      Trip.create!(depart_city: from,
                   depart_time: depart,
                   arrival_city: to,
                   arrival_time: arrival,
                   free_seat: seats)
    end
  end
end