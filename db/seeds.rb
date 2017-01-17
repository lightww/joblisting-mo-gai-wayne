# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "本SEED 可以自动创建一个ADMIN账号，并产生10个PUBLIC jobs ，10个 hidden jobs"

create_account = User.create([email: 'example@email.com', password: '12345678', password_confirmation: '12345678'])
puts "admin account created"

create_jos = for i in 1..10 do
Job.create!([title: "public-job no. #{i}", description: "这是 seed 创建的第 #{i} 个 public-job"])
end
puts "public-jobs created"

create_jos= for i in 1..10 do
  Job.create!([title: "hidden-job no. #{i}", description: "这是 seed 创建的第 #{i} 个 hidden-job"])
end
puts "hidden-job created"
