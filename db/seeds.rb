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

q1 = Quotation.create content:'Yoga is the journey of the self, through the self, to the self.', image:'https://images.unsplash.com/photo-1503803548695-c2a7b4a5b875?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=332072f9d176b37db042ab986a829577&auto=format&fit=crop&w=500&q=60'

q2 = Quotation.create content:'I love Upward-Facing Dog', image:'https://static.boredpanda.com/blog/wp-content/uploads/2014/05/funny-animals-doing-yoga-2.jpg'


q3 = Quotation.create content:'My religion is very simple. My religion is kindness.', image:'https://images.unsplash.com/photo-1495965478447-052a41235743?ixlib=rb-0.3.5&s=7398216e2464c4be8c7ea09319d77f17&auto=format&fit=crop&w=961&q=80'


q4 = Quotation.create content:'We may encounter many defeats but we must not be defeated', image:'https://images.unsplash.com/photo-1499002238440-d264edd596ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6b5fe0d44ac7a707f9452cfccec5d771&auto=format&fit=crop&w=1050&q=80'

q5 = Quotation.create content:'give me a <br>', image:'https://images.unsplash.com/photo-1503431128871-cd250803fa41?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b036ab1a07bbfd47a8d559735b4c40e6&auto=format&fit=crop&w=1050&q=80'

q6 = Quotation.create content:"Your speed doesn't matter, forward is forward.", image:'https://images.unsplash.com/photo-1540999742814-7c7cec92d9b2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=19f9fa35a5aa2fa1308566f7885b8979&auto=format&fit=crop&w=1051&q=80'

q7 = Quotation.create content:'Turn your wounds into wisdom', image:'https://images.unsplash.com/photo-1522008660239-1bbdb39444c4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=38434d91d60775352e25e464c658a33b&auto=format&fit=crop&w=1050&q=80'

q8 = Quotation.create content:'I want a Pixel 3.', image:'https://cbsnews2.cbsistatic.com/hub/i/r/2011/10/23/be2ab4a9-a644-11e2-a3f0-029118418759/thumbnail/1200x630/bd2191b23dff664737d3146de750ea49/SteveJobs_Wide.jpg'

puts "Created #{Quotation.all.length} quotations"
puts "Done!"

u1.quotations << q1 << q2 << q3
u2.quotations << q4 << q5 << q6
u3.quotations << q7 << q8
