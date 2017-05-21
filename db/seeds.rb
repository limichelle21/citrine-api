# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



si_units = Stdunit.create([
    { name: 's', factor: 60 },
    { name: 's', factor: 3600 },
    { name: 's' ,factor: 86400 },
    { name: 'rad', factor: (Math::PI/180) },
    { name: 'rad', factor: (Math::PI/10800) },
    { name: 'rad', factor: (Math::PI/648000) },
    { name: 'm^2', factor: 10000 },
    { name: 'm^3', factor: 0.001 },
    { name: 'kg', factor: 1000 }
    ])


units = Unit.create([
    { name: 'minute', stdunit_id: 1 },
    { name: 'min', stdunit_id: 1 },
    { name: 'hour', stdunit_id: 2 },
    { name: 'h', stdunit_id: 2 },
    { name: 'day', stdunit_id: 3 },
    { name: 'd', stdunit_id: 3 },
    { name: 'degree', stdunit_id: 4 },
    { name: '%C2%BA', stdunit_id: 4 },
    { name: '%BA', stdunit_id: 4 },
    { name: '%27', stdunit_id: 5 },
    { name: 'second', stdunit_id: 6 },
    { name: '%22', stdunit_id: 6 },
    { name: 'hectare', stdunit_id: 7 },
    { name: 'ha', stdunit_id: 7 },
    { name: 'litre', stdunit_id: 8 },
    { name: 'L', stdunit_id: 8 },
    { name: 'tonne', stdunit_id: 9 },
    { name: 't', stdunit_id: 9 },
    ])



puts "Seeds finished."
puts "#{Stdunit.count} SI_units created."
puts "#{Unit.count} units created"
