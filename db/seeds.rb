# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campaign.destroy_all
BankAccount.destroy_all
Profil.destroy_all
Election.destroy_all
User.destroy_all

user = User.create!(email: 'Gorete@mail.com', password: '123456', password_confirmation: '123456')
election = Election.create!(name: 'Municipales', level: 'municipalité', date: '13/04/2020', date_2: '23/04/2020', list: true)

for i in 1..10 do 

    candidate = Profil.create!(
                        first_name: Faker::Name.first_name,  
                        last_name: Faker::Name.last_name, 
                        email: Faker::Internet.email, 
                        phone: Faker::PhoneNumber.phone_number,
                        address: Faker::Address.street_name, 
                        zip_code: Faker::Address.zip_code, 
                        city: Faker::Address.city, 
                        profession: Faker::Job.title 
                    )
    puts "candidate #{candidate.last_name} created"

    agent = Profil.create!(
                        first_name: Faker::Name.first_name,  
                        last_name: Faker::Name.last_name, 
                        email: Faker::Internet.email,
                        phone: Faker::PhoneNumber.phone_number,
                        address: Faker::Address.street_name, 
                        zip_code: Faker::Address.zip_code, 
                        city: Faker::Address.city, 
                        profession: Faker::Job.title 
                    )

    puts "agent #{agent.last_name} created"

    bank = BankAccount.create!(
                        profil: agent,
                        title: "#{agent.last_name} #{election.name}",
                        account_number: Faker::Bank.account_number,
                        bank_name: Faker::Bank.name,
                        address: Faker::Address.street_name,
                        zip_code: Faker::Address.zip_code,
                        city: Faker::Address.city, 
                        opening_date: Faker::Date.backward(30)
    )

    campaign = Campaign.create!(election: election, candidate: candidate, agent: agent, user: user, result: 25.34, result_2: 50.01)

end