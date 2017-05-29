# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "admin@test.com"           # 可以改成自己的 email

u.password = "111111"                # 最少要六码

u.password_confirmation = "111111"   # 最少要六码

u.is_admin = true
u.save

categories = ["匠心手机","智能家居","视听震撼","酷炫应用","新潮玩具"]

categories.each do |category|
  Category.create!([:name=>category])
end

products = [
  {title:"米家恒温电水壶",
  description:"快速沸腾 / 水温智能控制 / 三重安全保护",
  quantity:1000,price:199,category_id:2,tag:"精品推荐"},
  {title:"米家扫地机器人",
  description:"高精度激光测距，智能规划路径 / 1800Pa 大风压澎湃吸力 / 远程智能控制 ，定时清扫 / 大电池持久清扫",
  quantity:1000,price:1699,category_id:2,tag:"精品推荐"},
  {title:"米家IH电饭煲",
  description:"IH 电磁环绕加热 / 大金 PFA 不粘锅粉体涂层 / 3000+ 煮米方案 / 200+ 烹饪菜单",
  quantity:1000,price:599,category_id:2,tag:""},
  {title:"Yeelight LED 吸顶灯",
  description:"5 分钟快装 / Ra95 显色指数 / 智能场景联动 / IP60 级防尘",
  quantity:1000,price:379,category_id:2,tag:"精品推荐"},
  {title:"小米净水器（厨上式）",
  description:"400加仑大流量出水 / RO反渗透直出纯净水 / 净化水质达瓶装纯净水标准 / 手机实时查看家中水质 / 5分钟自助安装",
  quantity:1000,price:1299,category_id:2,tag:"精品推荐"},
  {title:"Yeelight床头灯",
  description:"触摸式操作体验，给卧室1600万种颜色 / 多种灯光模式，一键改变床边风景支持小米2s/3/4，小米 Note，iPhone 4s 及以上机型",
  quantity:1000,price:249,category_id:2,tag:""},
  {title:"小米体重秤",
  description:"100克，喝杯水都可感知的精准 / 高精度压力传感器 / 手机管理全家健康",
  quantity:1000,price:99,category_id:2,tag:"精品推荐"},
  {title:"米家人体传感器",
  description:"搭配米家多功能网关 / 智能探测人或宠物移动",
  quantity:1000,price:59,category_id:2,tag:""},
  {title:"FIIL Diva Pro 全场景无线降噪耳机	",
  description:"智能语音交互、高清无损本地存储播放",
  quantity:1000,price:1499,category_id:3,tag:"精品推荐"},
  {title:"小米VR眼镜",
  description:"【购小米6、小米Note2、小米5s Plus、小米5s、小米5任意机型，再+249元，即可得小米VR眼镜】内置独立运动传感器 / 硬件级加速抗眩晕 / 16毫秒超低延迟 / 配备 9 轴体",
  quantity:1000,price:299,category_id:3,tag:"精品推荐"},
  {title:"荣耀小口哨 AM07 智控随充蓝牙耳机 （灰色）",
  description:"金属机身，简约时尚设计；随用随充，告别充电器；快速充电，高清音质",
  quantity:1000,price:179,category_id:3,tag:""},
  {title:"九号平衡车",
  description:"【随车赠送价值359元意外险】年轻人的酷玩具 / 骑行遥控两种玩法 / 22公里超长续航 / 轻、小、便携 / 重心驱动 / 15重安全保障",
  quantity:1000,price:1999,category_id:5,tag:""},
  {title:"米兔积木机器人",
  description:"978个零件，享受挑战双手的乐趣 / 自平衡系统 / 手机智能遥控 / 模块化图形编程",
  quantity:1000,price:499,category_id:5,tag:""},
  {title:"小米米家电动滑板车",
  description:"极简几何设计，1分钟轻松上手 / 30公里超长续航 / 双重刹车系统 / 便携折叠",
  quantity:1000,price:1999,category_id:5,tag:""},
  {title:"小米无人机4K版套装",
  description:"易上手 / 高品质影像 / 安全 / 小巧便携",
  quantity:1000,price:2999,category_id:5,tag:"精品推荐"},
  {title:"小米手环 2",
  description:"OLED显示屏，时间、步数、心率，触手可及 / 全新腕带设计，升级计步算法 / 精准心率监测，科学运动自主掌握",
  quantity:1000,price:149,category_id:5,tag:""},
]

p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:products[0][:quantity],price:products[0][:price],category_id:products[0][:category_id],tag:products[0][:tag]])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:products[1][:quantity],price:products[1][:price],category_id:products[1][:category_id],tag:products[1][:tag]])
p3 = Product.create([title:products[2][:title],description:products[2][:description],quantity:products[2][:quantity],price:products[2][:price],category_id:products[2][:category_id],tag:products[2][:tag]])
p4 = Product.create([title:products[3][:title],description:products[3][:description],quantity:products[3][:quantity],price:products[3][:price],category_id:products[3][:category_id],tag:products[3][:tag]])
p5 = Product.create([title:products[4][:title],description:products[4][:description],quantity:products[4][:quantity],price:products[4][:price],category_id:products[4][:category_id],tag:products[4][:tag]])
p6 = Product.create([title:products[5][:title],description:products[5][:description],quantity:products[5][:quantity],price:products[5][:price],category_id:products[5][:category_id],tag:products[5][:tag]])
p7 = Product.create([title:products[6][:title],description:products[6][:description],quantity:products[6][:quantity],price:products[6][:price],category_id:products[6][:category_id],tag:products[6][:tag]])
p8 = Product.create([title:products[7][:title],description:products[7][:description],quantity:products[7][:quantity],price:products[7][:price],category_id:products[7][:category_id],tag:products[7][:tag]])
p9 = Product.create([title:products[8][:title],description:products[8][:description],quantity:products[8][:quantity],price:products[8][:price],category_id:products[8][:category_id],tag:products[8][:tag]])
p10 = Product.create([title:products[9][:title],description:products[9][:description],quantity:products[9][:quantity],price:products[9][:price],category_id:products[9][:category_id],tag:products[9][:tag]])
p11 = Product.create([title:products[10][:title],description:products[10][:description],quantity:products[10][:quantity],price:products[10][:price],category_id:products[10][:category_id],tag:products[10][:tag]])
p12 = Product.create([title:products[11][:title],description:products[11][:description],quantity:products[11][:quantity],price:products[11][:price],category_id:products[11][:category_id],tag:products[11][:tag]])
p13 = Product.create([title:products[12][:title],description:products[12][:description],quantity:products[12][:quantity],price:products[12][:price],category_id:products[12][:category_id],tag:products[12][:tag]])
p14 = Product.create([title:products[13][:title],description:products[13][:description],quantity:products[13][:quantity],price:products[13][:price],category_id:products[13][:category_id],tag:products[13][:tag]])
p15 = Product.create([title:products[14][:title],description:products[14][:description],quantity:products[14][:quantity],price:products[14][:price],category_id:products[14][:category_id],tag:products[14][:tag]])
p16 = Product.create([title:products[15][:title],description:products[15][:description],quantity:products[15][:quantity],price:products[15][:price],category_id:products[15][:category_id],tag:products[15][:tag]])

Photo.create!(product_id:1,avatar: open(File.join('https://ws3.sinaimg.cn/large/006tKfTcgy1fg1god6zz7j307306ldfw.jpg')))
Photo.create!(product_id:2,avatar: open(File.join('https://ws3.sinaimg.cn/large/006tKfTcgy1fg1god6zz7j307306ldfw.jpg')))
Photo.create!(product_id:3,avatar: open('https://ws3.sinaimg.cn/large/006tKfTcgy1fg1god6zz7j307306ldfw.jpg'))
Photo.create!(product_id:4,avatar: open(File.join('public/images/Yeelight LED-1.png')))
Photo.create!(product_id:5,avatar: open(File.join('public/images/Water-Purifier-1.jpg')))
Photo.create!(product_id:6,avatar: open(File.join('public/images/Bedside-lamp-1.jpg')))
Photo.create!(product_id:6,avatar: open(File.join('public/images/Bedside-lamp-2.jpg')))
Photo.create!(product_id:6,avatar: open(File.join('public/images/Bedside-lamp-3.jpg')))
Photo.create!(product_id:6,avatar: open(File.join('public/images/Bedside-lamp-4.jpg')))
Photo.create!(product_id:7,avatar: open(File.join('public/images/scales-1.jpg')))
Photo.create!(product_id:8,avatar: open(File.join('public/images/Human-body-sensor-1.jpg')))
Photo.create!(product_id:8,avatar: open(File.join('public/images/Human-body-sensor-2.jpg')))
Photo.create!(product_id:8,avatar: open(File.join('public/images/Human-body-sensor-3.jpg')))
Photo.create!(product_id:9,avatar: open(File.join('public/images/Noise-reduction-headphones-1.jpg')))
Photo.create!(product_id:9,avatar: open(File.join('public/images/Noise-reduction-headphones-2.jpg')))
Photo.create!(product_id:9,avatar: open(File.join('public/images/Noise-reduction-headphones-3.jpg')))
Photo.create!(product_id:9,avatar: open(File.join('public/images/Noise-reduction-headphones-4.jpg')))
Photo.create!(product_id:10,avatar: open(File.join('public/images/VR-glass-1.jpg')))
Photo.create!(product_id:11,avatar: open(File.join('public/images/Bluetooth earphone-1.jpg')))
Photo.create!(product_id:11,avatar: open(File.join('public/images/Bluetooth earphone-2.jpg')))
Photo.create!(product_id:11,avatar: open(File.join('public/images/Bluetooth earphone-3.jpg')))
Photo.create!(product_id:11,avatar: open(File.join('public/images/Bluetooth earphone-4.jpg')))
Photo.create!(product_id:12,avatar: open(File.join('public/images/no.9-balance-car.jpg')))
Photo.create!(product_id:13,avatar: open(File.join('public/images/blocks-robot-1.jpg')))
Photo.create!(product_id:14,avatar: open(File.join('public/images/Electric-scooter-1.jpg')))
Photo.create!(product_id:15,avatar: open(File.join('public/images/UAV-1.jpg')))
Photo.create!(product_id:16,avatar: open(File.join('public/images/mi-band.jpg')))

IntroducePicture.create!(product_id:1,avatar: open(File.join('public/images/boiler-intro-1.png')))
IntroducePicture.create!(product_id:1,avatar: open(File.join('public/images/boiler-intro-2.png')))
IntroducePicture.create!(product_id:1,avatar: open(File.join('public/images/boiler-intro-3.png')))
IntroducePicture.create!(product_id:2,avatar: open(File.join('public/images/cleaner-robot-intro-1.png')))
IntroducePicture.create!(product_id:2,avatar: open(File.join('public/images/cleaner-robot-intro-2.png')))
IntroducePicture.create!(product_id:2,avatar: open(File.join('public/images/cleaner-robot-intro-3.png')))
IntroducePicture.create!(product_id:3,avatar: open(File.join('public/images/rice-cooker-intro-1.jpg')))
IntroducePicture.create!(product_id:3,avatar: open(File.join('public/images/rice-cooker-intro-2.jpg')))
IntroducePicture.create!(product_id:3,avatar: open(File.join('public/images/rice-cooker-intro-3.jpg')))
IntroducePicture.create!(product_id:4,avatar: open(File.join('public/images/Yeelight LED-intro-1.png')))
IntroducePicture.create!(product_id:4,avatar: open(File.join('public/images/Yeelight LED-intro-2.png')))
IntroducePicture.create!(product_id:4,avatar: open(File.join('public/images/Yeelight LED-intro-3.png')))
IntroducePicture.create!(product_id:5,avatar: open(File.join('public/images/Water-Purifier-intro-1.png')))
IntroducePicture.create!(product_id:5,avatar: open(File.join('public/images/Water-Purifier-intro-2.png')))
IntroducePicture.create!(product_id:5,avatar: open(File.join('public/images/Water-Purifier-intro-3.png')))
IntroducePicture.create!(product_id:6,avatar: open(File.join('public/images/Bedside-lamp-intro-1.jpg')))
IntroducePicture.create!(product_id:6,avatar: open(File.join('public/images/Bedside-lamp-intro-2.jpg')))
IntroducePicture.create!(product_id:6,avatar: open(File.join('public/images/Bedside-lamp-intro-3.jpg')))
IntroducePicture.create!(product_id:7,avatar: open(File.join('public/images/scales-intro-1.jpg')))
IntroducePicture.create!(product_id:7,avatar: open(File.join('public/images/scales-intro-2.jpg')))
IntroducePicture.create!(product_id:7,avatar: open(File.join('public/images/scales-intro-3.jpg')))
IntroducePicture.create!(product_id:8,avatar: open(File.join('public/images/Human-body-sensor-intro-1.jpg')))
IntroducePicture.create!(product_id:8,avatar: open(File.join('public/images/Human-body-sensor-intro-2.jpg')))
IntroducePicture.create!(product_id:8,avatar: open(File.join('public/images/Human-body-sensor-intro-3.jpg')))
IntroducePicture.create!(product_id:9,avatar: open(File.join('public/images/Noise-reduction-headphones-intro-1.jpg')))
IntroducePicture.create!(product_id:9,avatar: open(File.join('public/images/Noise-reduction-headphones-intro-2.jpg')))
IntroducePicture.create!(product_id:9,avatar: open(File.join('public/images/Noise-reduction-headphones-intro-3.jpg')))
IntroducePicture.create!(product_id:10,avatar: open(File.join('public/images/VR-glass-intro-1.png')))
IntroducePicture.create!(product_id:10,avatar: open(File.join('public/images/VR-glass-intro-2.png')))
IntroducePicture.create!(product_id:10,avatar: open(File.join('public/images/VR-glass-intro-3.png')))
IntroducePicture.create!(product_id:10,avatar: open(File.join('public/images/blocks-robot-intro-1.png')))
IntroducePicture.create!(product_id:10,avatar: open(File.join('public/images/blocks-robot-intro-2.png')))
IntroducePicture.create!(product_id:10,avatar: open(File.join('public/images/blocks-robot-intro-3.png')))
IntroducePicture.create!(product_id:11,avatar: open(File.join('public/images/Bluetooth-earphone-intro-1.jpg')))
IntroducePicture.create!(product_id:11,avatar: open(File.join('public/images/Bluetooth-earphone-intro-2.jpg')))
IntroducePicture.create!(product_id:11,avatar: open(File.join('public/images/Bluetooth-earphone-intro-3.jpg')))
IntroducePicture.create!(product_id:12,avatar: open(File.join('public/images/no.9-balance-car-intro-1.png')))
IntroducePicture.create!(product_id:12,avatar: open(File.join('public/images/no.9-balance-car-intro-2.png')))
IntroducePicture.create!(product_id:12,avatar: open(File.join('public/images/no.9-balance-car-intro-3.png')))
IntroducePicture.create!(product_id:13,avatar: open(File.join('public/images/blocks-robot-intro-1.png')))
IntroducePicture.create!(product_id:13,avatar: open(File.join('public/images/blocks-robot-intro-2.png')))
IntroducePicture.create!(product_id:13,avatar: open(File.join('public/images/blocks-robot-intro-3.png')))
IntroducePicture.create!(product_id:14,avatar: open(File.join('public/images/Electric-scooter-intro-1.png')))
IntroducePicture.create!(product_id:14,avatar: open(File.join('public/images/Electric-scooter-intro-2.png')))
IntroducePicture.create!(product_id:14,avatar: open(File.join('public/images/Electric-scooter-intro-3.png')))
IntroducePicture.create!(product_id:15,avatar: open(File.join('public/images/UAV-intro-1.png')))
IntroducePicture.create!(product_id:15,avatar: open(File.join('public/images/UAV-intro-1.png')))
IntroducePicture.create!(product_id:15,avatar: open(File.join('public/images/UAV-intro-1.png')))
IntroducePicture.create!(product_id:16,avatar: open(File.join('public/images/mi-band-intro-1.png')))
IntroducePicture.create!(product_id:16,avatar: open(File.join('public/images/mi-band-intro-2.png')))
IntroducePicture.create!(product_id:16,avatar: open(File.join('public/images/mi-band-intro-3.png')))
