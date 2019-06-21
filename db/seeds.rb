# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Location.create(name: "Cambridge")
Location.create(name: "Hamilton")

Salon.create(name:"Loulous Hair Studio", address:"41 Victoria Street", opening_hours: "Monday - Thursday 9am-8pm, Friday 9am - 5:30pm", location_id: 1)
Salon.create(name: "The Sample Room", address:"8 Lake Street", opening_hours: "Tuesday - Friday 9am - 8:30pm, Saturday 9am - 3pm", location_id: 1)
Salon.create(name: "John's Barber", address:"23 Shakespeare Street", opening_hours: "Monday - Friday 9am - 6:30pm, Saturday 9am - 1pm", location_id: 2)

Role.create(title: "Stylist")
Role.create(title: "Colour Technician")
Role.create(title: "Barber")

Stylist.create(name: "Briar", role_id: 3, salon_id: 2)
Stylist.create(name: "Linda", role_id: 1 , salon_id: 2)
Stylist.create(name: "Janet", role_id: 2, salon_id: 1)
Stylist.create(name: "Victoria", role_id: 2, salon_id: 1)
Stylist.create(name: "John", role_id: 2, salon_id: 3)

Service.create(name:"Haircut")
Service.create(name:"Hair Colouring")
Service.create(name:"Blow Dry")
Service.create(name:"Haircut and Colouring")

Treatment.create(name: "Wash, cut and blow dry", description: "Look great after a new cut and blow dry", price: 50, time: 60, service_id: 1)
Treatment.create(name: "Dry cut", description: "Look great after a fresh cut", price: 30, time: 30, service_id: 1)
Treatment.create(name: "Half head foils", description: "Change up your look this season with half head of foils", price: 55, time: 60, service_id: 2)
Treatment.create(name: "Full head foils", description: "Change up your look this season with half head of foils", price: 85, time: 90, service_id: 2)
Treatment.create(name: "Fringe trim", description: "Tidy up your fringe", price: 10, time: 10, service_id: 1)
Treatment.create(name: "Mens Haircut", description: "Look great after a fresh cut", price: 15, time: 15, service_id: 1)

