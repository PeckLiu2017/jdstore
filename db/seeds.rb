# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# u = User.new
# u.email = "admin@test.com"           # 可以改成自己的 email
#
# u.password = "111111"                # 最少要六码
#
# u.password_confirmation = "111111"   # 最少要六码
#
# u.is_admin = true
# u.save

# categories = ["匠心手机","智能家居","视听震撼","酷炫应用","新潮玩具"]
#
# categories.each do |category|
#   Category.create!([:name=>category])
# end

products = [{title:"九号平衡车",
  description:"【随车赠送价值359元意外险】年轻人的酷玩具 / 骑行遥控两种玩法 / 22公里超长续航 / 轻、小、便携 / 重心驱动 / 15重安全保障",
  quantity:1000,price:1999,category_id:5}]

p23 = Product.create([title:products[0][:title],description:products[0][:description],quantity:1000,price:1999,category_id:5])

Photo.create!(product_id:34,avatar: open('http://onky7tr74.bkt.clouddn.com/uploads/photo/avatar/56/boiler.jpg'))
# Photo.create!(product_id:28,avatar: open('http://onky7tr74.bkt.clouddn.com/uploads/photo/avatar/57/6260c4325788c4032ab9051e25e1595a.jpg'))
# Photo.create!(product_id:28,avatar: open('http://onky7tr74.bkt.clouddn.com/uploads/photo/avatar/58/f8d32e64b9d9feb2841042665e8d8fe1.png'))
# Photo.create!(product_id:28,avatar: open('http://onky7tr74.bkt.clouddn.com/uploads/photo/avatar/59/cleaner-robot.jpg'))
