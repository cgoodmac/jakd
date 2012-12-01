# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

urls = []
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/nathanbdb.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/friendofcj.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/austin.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/roomatesymabdb.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/andrewcj.jpg"

['nathan', 'cj', 'austin', 'syma', 'andrew']