# # This file should ensure the existence of records required to run the application in every environment (production,
# # development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Example:
# #
# #   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
# #     MovieGenre.find_or_create_by!(name: genre_name)
# #   end

# cars_list = [
#   {
#     brand: "Ferrari",
#     model: "Enzo",
#     year: 2003
#   },
#   {
#     brand: "Bugatti",
#     model: "Veyron",
#     year: 2005
#   },
#   {
#     brand: "Koenigsegg",
#     model: "CCX",
#     year: 2006
#   },
#   {
#     brand: "Pagani",
#     model: "Zonda",
#     year: 1999
#   },
#   {
#     brand: "Lamborghini",
#     model: "Aventador",
#     year: 2011
#   },
#   {
#     brand: "McLaren",
#     model: "P1",
#     year: 2013
#   },
#   {
#     brand: "Aston Martin",
#     model: "One-77",
#     year: 2009
#   },
#   {
#     brand: "Porsche",
#     model: "918 Spyder",
#     year: 2013
#   },
#   {
#     brand: "Ferrari",
#     model: "LaFerrari",
#     year: 2013
#   },
#   {
#     brand: "Lamborghini",
#     model: "Centenario",
#     year: 2016
#   },
#   {
#     brand: "Ferrari",
#     model: "F50",
#     year: 1995
#   },
#   {
#     brand: "Bugatti",
#     model: "Chiron",
#     year: 2016
#   },
#   {
#     brand: "Koenigsegg",
#     model: "Agera RS",
#     year: 2017
#   },
#   {
#     brand: "Pagani",
#     model: "Huayra",
#     year: 2012
#   },
#   {
#     brand: "Lamborghini",
#     model: "Huracan",
#     year: 2014
#   },
#   {
#     brand: "McLaren",
#     model: "720S",
#     year: 2017
#   },
#   {
#     brand: "Aston Martin",
#     model: "Valkyrie",
#     year: 2019
#   },
#   {
#     brand: "Porsche",
#     model: "Carrera GT",
#     year: 2004
#   },
#   {
#     brand: "Ferrari",
#     model: "812 Superfast",
#     year: 2017
#   },
#   {
#     brand: "Lamborghini",
#     model: "Sian",
#     year: 2019
#   },
#   {
#     brand: "Ferrari",
#     model: "458 Italia",
#     year: 2009
#   },
#   {
#     brand: "Bugatti",
#     model: "EB110",
#     year: 1991
#   },
#   {
#     brand: "Koenigsegg",
#     model: "Regera",
#     year: 2015
#   },
#   {
#     brand: "Pagani",
#     model: "Zonda Cinque",
#     year: 2009
#   },
#   {
#     brand: "Lamborghini",
#     model: "Veneno",
#     year: 2013
#   },
#   {
#     brand: "McLaren",
#     model: "Senna",
#     year: 2018
#   },
#   {
#     brand: "Aston Martin",
#     model: "DBS Superleggera",
#     year: 2018
#   },
#   {
#     brand: "Porsche",
#     model: "GT2 RS",
#     year: 2017
#   },
#   {
#     brand: "Ferrari",
#     model: "488 Pista",
#     year: 2018
#   },
#   {
#     brand: "Lamborghini",
#     model: "Diablo",
#     year: 1990
#   },
#   {
#     brand: "Bugatti",
#     model: "Divo",
#     year: 2019
#   },
#   {
#     brand: "Koenigsegg",
#     model: "Gemera",
#     year: 2020
#   },
#   {
#     brand: "Pagani",
#     model: "Zonda Revolucion",
#     year: 2013
#   },
#   {
#     brand: "Lamborghini",
#     model: "Gallardo",
#     year: 2003
#   },
#   {
#     brand: "McLaren",
#     model: "600LT",
#     year: 2018
#   },
#   {
#     brand: "Aston Martin",
#     model: "DB11",
#     year: 2016
#   },
#   {
#     brand: "Porsche",
#     model: "911 GT3 RS",
#     year: 2015
#   },
#   {
#     brand: "Ferrari",
#     model: "California",
#     year: 2008
#   },
#   {
#     brand: "Lamborghini",
#     model: "Murcielago",
#     year: 2001
#   },
#   {
#     brand: "Bugatti",
#     model: "Centodieci",
#     year: 2019
#   },
#   {
#     brand: "Koenigsegg",
#     model: "Jesko",
#     year: 2020
#   },
#   {
#     brand: "Pagani",
#     model: "Huayra Roadster",
#     year: 2017
#   },
#   {
#     brand: "Lamborghini",
#     model: "Countach",
#     year: 1974
#   },
#   {
#     brand: "McLaren",
#     model: "675LT",
#     year: 2015
#   },
#   {
#     brand: "Aston Martin",
#     model: "Vantage",
#     year: 2018
#   },
#   {
#     brand: "Porsche",
#     model: "Cayman GT4",
#     year: 2015
#   },
#   {
#     brand: "Ferrari",
#     model: "F12 Berlinetta",
#     year: 2012
#   }
# ]

# price_list = [7000, 7500, 8000, 8500, 9000, 9500, 10000, 11000, 12000, 13000, 14000,15000]

# cars_list.each do |cars|
#     Vehicle.create!(
#         brand: cars[:brand],
#         model: cars[:model],
#         year: cars[:year],
#         price_per_day: price_list.sample()
#     )
# end

# p "Created #{Vehicle.count} Vehicles"



start_dates  = (2.month.ago.to_date..1.month.ago.to_date).map{ |date| date.strftime("%d-%m-%Y") }
end_dates = (1.month.ago.to_date..Date.today).map{ |date| date.strftime("%d-%m-%Y") }

users = User.all.reject {|u| u.email=="admin@vra.org"}


cards = ["1111222233334444","1234123412341234","1324132413241324"]

100.times do 
  start_date = start_dates.sample.to_date()
  end_date = end_dates.sample.to_date()
  vehicle = Vehicle.all.sample()
  user = users.sample()
  total_cost = ((end_date-start_date).to_i()) * vehicle.price_per_day
  
  agreement = RentalAgreement.create(user:user, vehicle:vehicle, start_date:start_date, end_date:end_date, total_cost:total_cost)


  agreement.create_payment(cardholder_name:"XYZ", card_number:cards.sample(), expiry_date:"09/2030".to_date, cvv:690)

end