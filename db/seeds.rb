# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

u1 = User.create name:'Mika', email:'mika@quotation.co', password:'chicken'
u2 = User.create name:'Lisa', email:'lisa@quotation.co', password:'chicken'
u3 = User.create name:'Sean', email:'sean@quotation.co', password:'chicken'

puts "Created #{User.all.length} users"


Quotation.destroy_all



q1 = Quotation.create content:'I love Upward-Facing Dog', image:'https://static.boredpanda.com/blog/wp-content/uploads/2014/05/funny-animals-doing-yoga-2.jpg'


q2 = Quotation.create content:'My religion is kindness.', image:'https://images.unsplash.com/photo-1495965478447-052a41235743?ixlib=rb-0.3.5&s=7398216e2464c4be8c7ea09319d77f17&auto=format&fit=crop&w=961&q=80'



q3 = Quotation.create content:'give me a brake', image:'https://images.unsplash.com/photo-1503431128871-cd250803fa41?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b036ab1a07bbfd47a8d559735b4c40e6&auto=format&fit=crop&w=1050&q=80'


puts "Created #{Quotation.all.length} quotations"
puts "Done!"

u1.quotations << q1
u2.quotations << q2
u3.quotations << q3
