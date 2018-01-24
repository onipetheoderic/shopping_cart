# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# u = User.new(:email => "user@name.com", :password => 'password', :password_confirmation => 'password', :admin => true)
# u.save  
User.create!(email: 'admin1234@gmail.com', 
             password: 't1t2t3t4', 
             password_confirmation: 't1t2t3t4',
             admin: true)

Detail.create!(title: 'Phones and Tablets', body: 'Tv and Electronics', category: 'laptops_and_desktop',
 category1: 'Game and Console', category2: 'Health and Beauty', category3: 'footwears', category4: 'Home and Offices',
 category5: 'Wrist Watches', category6: 'footwears', category7: 'Sport and Fitness', category8: 'tv and kids products', 
 category9: 'Provisions', category10: 'Cars and Truck', category11: 'Jewellry', category12: 'land and properties', 
 category13: 'Home and decor and Kitchen', category14: 'Jobs', category15: 'Clothings')

Product.create!(title: 'Nokia', body: 'best watch in the world', price: 20000, categori: 'phones_and_tablet', image: 'https://image.ibb.co/hU7kzG/nextep7.jpg')
Product.create!(title: 'Sony', body: 'best watch in the world', price: 20000, categori: 'phones_and_tablet', image: 'https://image.ibb.co/coD3mw/EVO_NK640_XL_SA15_MAIN2_51316_1430347445_1280_1280.png')
Product.create!(title: 'Iris Mobile', body: 'best phone in the world', price: 20000, categori: 'phones_and_tablet', image: 'https://image.ibb.co/focw6w/jjj.jpg')
Product.create!(title: 'future', body: 'best watch in the world', price: 20000, categori: 'phones_and_tablet', image: 'https://image.ibb.co/fMQimw/Hello_Tomorrow_Phone_concept_4.jpg')

Product.create!(title: 'wrist watch', body: 'best watch in the world', price: 20000, categori: 'wrist_watches', image: 'https://image.ibb.co/e30Ymw/71_SXCEh_z_JL_UL1500.jpg')
Product.create!(title: 'wrist watch', body: 'best watch in the world', price: 20000, categori: 'wrist_watches', image: 'https://image.ibb.co/jBo8KG/20150707154553wh5dvm0.jpg')
Product.create!(title: 'Nokia', body: 'best watch in the world', price: 20000, categori: 'phones_and_tablet', image: 'https://image.ibb.co/nt0cDb/Axon_7.png')
Product.create!(title: 'Blackberry', body: 'best watch in the world', price: 20000, categori: 'phones_and_tablet', image: 'https://image.ibb.co/iwCkzG/bbbb.jpg')

Product.create!(title: 'wrist watch', body: 'best watch in the world', price: 20000, categori: 'wrist_watches', image: 'https://image.ibb.co/bOmneG/wristwatch1.jpg')
Product.create!(title: 'Chain', body: 'best watch in the world', price: 20000, categori: 'jewellry', image: 'https://image.ibb.co/c5MpRw/Fashion_Shiny_Round_Cut_Red_Ring_Women_Charming_Red_Garnet_Wedding_Jewelry_Black_Gold_Filled_Promise_jpg_640x640.jpg')
Product.create!(title: 'Ring', body: 'best watch in the world', price: 20000, categori: 'jewellry', image: 'https://image.ibb.co/nL6aYb/White_Gold_Color_Heart_Design_100_Austrian_Crystal_Statement_Pendant_Necklace_for_Women_Jewelry_jpg_640x640.jpg')
Product.create!(title: 'wrist watch', body: 'best watch in the world', price: 20000, categori: 'wrist_watches', image: 'https://image.ibb.co/bOmneG/wristwatch1.jpg')



