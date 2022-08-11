# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Favorite.destroy_all
Space.destroy_all

require 'open-uri'

charlies = Space.create(name: 'Charlies (Changshu Lu)', address: '上海常熟路89', category: 'Restaurant', sub_category: 'American', access: 'indoor and outdoor', features: ['dog_bowl', 'indoor', 'outdoor', 'dog food'], longitude: 121.447994,latitude: 31.216996 )
charlies.image.attach(io: URI.open('http://www.smartshanghai.com/uploads/articles/2019/05/4341557460180.jpg'), filename: 'charlies')

tacolicious = Space.create(name: 'Tacolicious', address: '上海余姚路34', category: 'Restaurant', sub_category: 'Mexican', access: 'outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.443727,latitude: 31.236356)
tacolicious.image.attach(io: URI.open('https://img.timeoutshanghai.com/202004/20200417033424100_Large.jpg'), filename: 'tacolicious')

westbund = Space.create(name: 'West Bund', address: '龙腾大道3268号', category: 'Park', access: 'outdoor', features: ['outdoor'], longitude: 121.463961,latitude: 31.181555)
westbund.image.attach(io: URI.open('https://ts1.cn.mm.bing.net/th/id/R-C.c27bd7aab4d24ce70de884ed8812f9b6?rik=jGQXvxEV3%2bHAfA&riu=http%3a%2f%2fwww.westbund.com%2fupload%2fphoto_db%2f2018%2f09%2f11%2f201809112048242984%2f201809112048242984_1050_700.jpg&ehk=cYoDsu%2fGgVIHxU6DDfYh2OxvAkJn%2fDI5Tnaix%2fJczbQ%3d&risl=&pid=ImgRaw&r=0'), filename: 'westbund')

rooster = Space.create(name: 'The Rooster', address: '陕西北路455号', category: 'Bar', access: 'indoor and outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.452868,latitude: 31.23035 )
rooster.image.attach(io: URI.open('https://ts1.cn.mm.bing.net/th/id/R-C.87b950023dcf981516a75b7a768bd1f7?rik=CWzWtlkYwpIcQQ&riu=http%3a%2f%2fwww.smartshanghai.com%2fuploads%2fvenues%2fimages%2f1571899018.jpg&ehk=Bv7j4no1tq3x6CPTQ6JSmeyvuaq1xNlt8TnTnZ2o2FQ%3d&risl=&pid=ImgRaw&r=0'), filename: 'rooster')

abbeyroad = Space.create(name: 'Abbey Road', address: '桃江路3号', category: 'Restaurant', sub_category: 'American', access: 'outdoor', features: ['dog_bowl', 'outdoor'], longitude: 121.451136,latitude: 31.20901 )
abbeyroad.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2020/08/25/abdcbd0d-cd73-4aa1-9ec9-eb34da02701f.jpeg.660.440.webp'), filename: 'abbeyroad')

brewdog = Space.create(name: 'Brew Dog', address: '成都北路333号1楼', category: 'Restaurant', sub_category: 'American', access: 'indoor and outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.46639,latitude: 31.227924 )
brewdog.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2020/11/19/e47cbe94-66bc-49a6-a289-97bf2a0d3566.jpeg.660.440.webp'), filename: 'brewdog')

cottons = Space.create(name: 'Cottons', address: '新华路294号', category: 'Restaurant', sub_category: 'American', access: 'outdoor', features: ['dog_bowl', 'outdoor'], longitude: 121.427003,latitude: 31.203237 )
cottons.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/2404f535-3039-4e62-b0c5-21e006999929.jpeg.890.0.webp'), filename: 'cottons')

cannery = Space.create(name: 'The Cannery', address: '愚园路1107号', category: 'Restaurant', sub_category: 'American', access: 'indoor outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.428332,latitude: 31.218151 )
cannery.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/453c7157-96cb-4be9-9d37-0ddaad0421b4.jpeg.1200.0.webp'), filename: 'cannery')

perch = Space.create(name: 'Perch', address: '江宁路445号', category: 'Bar', access: 'indoor outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.452086,latitude: 31.234728 )
perch.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/2c9abb46-1711-4137-bd11-0d543adb40c5.jpeg.1360.0.webp'), filename: 'perch')

bbbagels = Space.create(name: 'Boom Boom Bagels', address: '安福路39号', category: 'Restaurant', sub_category: 'American', access: 'indoor outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.44732,latitude: 31.214834 )
bbbagels.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2021/07/05/24e6406c-7840-4c68-b8b2-b2c353c49e60.jpeg.360.240.webp'), filename: 'bbbagels')

cocheese = Space.create(name: 'Co. Cheese Melt Bar', address: '南昌路509号', category: 'Restaurant', sub_category: 'American', access: 'indoor outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.459687,latitude: 31.214943 )
cocheese.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2020/09/15/c8d715b8-fa77-4ac3-91d4-4716607eafa3.jpeg.360.240.webp'), filename: 'cocheese')

mokabros = Space.create(name: 'Mokas Bros', address: '襄阳北路108号1楼', category: 'Restaurant', sub_category: 'American', access: 'indoor outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.455933,latitude: 31.216204 )
mokabros.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2021/02/24/61bf50d8-36b8-4a65-bd7d-cea23babd387.jpeg.360.240.webp'), filename: 'mokabros')

cantinaagave = Space.create(name: 'Cantina Agave', address: '富民路291号', category: 'Restaurant', sub_category: 'Mexican', access: 'outdoor', features: ['dog_bowl', 'outdoor'], longitude: 121.452766,latitude: 31.217343 )
cantinaagave.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2021/02/24/17148ed1-ff7c-4946-a98f-aed2f7017885.jpeg.360.240.webp'), filename: 'cantinaagave')

omills = Space.create(name: 'OMills', address: '永嘉路110号', category: 'Cafe', access: 'outdoor', features: ['dog_bowl','outdoor'], longitude: 121.460011,latitude: 31.209745 )
omills.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2020/09/09/47062988-4339-4c30-9d95-be2b1766f3c0.jpeg.360.240.webp'), filename: 'omills')

bruteatery = Space.create(name: 'Brut Eatery', address: '愚园路698号', category: 'Cafe', access: 'outdoor', features: ['dog_bowl', 'outdoor'], longitude: 121.435844,latitude: 31.220971 )
bruteatery.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2020/09/28/24f214e0-db45-4ca4-bae8-80eb51decbe6.jpeg.360.240.webp'), filename: 'bruteatery')

bathe = Space.create(name: 'Bathe Coffee', address: '永康路70号', category: 'Cafe', access: 'outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.458102,latitude: 31.210994 )
bathe.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2021/11/17/b8d479c9-dc0a-4369-8e74-1478e0e8a0a8.jpg.360.240.webp'), filename: 'bathe')

avc = Space.create(name: 'AVC', address: '斜土路1298号', category: 'Vet', access: 'indoor', features: ['dog_bowl', 'indoor'], longitude: 121.463126,latitude: 31.197267 )
avc.image.attach(io: URI.open('https://tse2-mm.cn.bing.net/th/id/OIP-C.L5nDcQ46r2UGgzjKLwsingHaEK?pid=ImgDet&rs=1'), filename: 'avc')

lewagon = Space.create(name: 'Le Wagon', address: '延平路425号2号楼401', category: 'Other', access: 'indoor', features: ['dog_bowl', 'indoor', 'outdoor', 'dog_food'], longitude: 121.43737,latitude: 31.233334 )
lewagon.image.attach(io: URI.open('https://ts1.cn.mm.bing.net/th/id/R-C.8cb5788437255cebc52dce25468f3159?rik=PYxSeEF1PptfVQ&riu=http%3a%2f%2fwww.smartshanghai.com%2fuploads%2frepository%2f2020%2f04%2f01%2f561e42c5-2f82-4bbf-a520-52768ff7107c.jpeg&ehk=5jug%2fCjLppfXHuKKIJ66%2b%2fWVFF8ATxnsypLkZDm2CM4%3d&risl=&pid=ImgRaw&r=0'), filename: 'lewagon')

paw = Space.create(name: 'Paw Clinic', address: '东青莲路99号', category: 'Vet', access: 'indoor', features: ['dog_bowl', 'indoor'], longitude: 121.457754,latitude: 31.241917 )
paw.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2021/10/28/ed82ca27-6081-47b9-ba3d-b50b9908f44b.jpg.360.240.webp'), filename: 'paw')

dogcat = Space.create(name: 'Dog & Cat', address: '威海路379号', category: 'Vet', access: 'indoor', features: ['dog_bowl', 'indoor'], longitude: 121.46439,latitude: 31.227084 )
dogcat.image.attach(io: URI.open('https://ts1.cn.mm.bing.net/th/id/R-C.3629148c80687c439b65240ae1933e46?rik=ul1EGkAjPfDEXQ&riu=http%3a%2f%2fwww.pawivs.com%2fimages%2fban303.jpg&ehk=yOe%2fKfeBm55OXZltFFuj0WzFwSxpmA4VOsVuX1JDE4o%3d&risl=&pid=ImgRaw&r=0'), filename: 'dogcat')

beckstone = Space.create(name: 'Doctors Beck & Stone', address: '威宁路500号', category: 'Vet', access: 'indoor', features: ['dog_bowl', 'indoor'], longitude: 121.386111,latitude: 31.217259 )
beckstone.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2021/10/28/ee8114f0-e1bd-4e53-a45a-31ff3210a672.jpg.360.240.webp'), filename: 'beckstone')

shenpu = Space.create(name: 'Shenpu Pet Hospital', address: '天山路185号', category: 'Vet', access: 'indoor', features: ['dog_bowl', 'indoor'], longitude: 121.382698,latitude: 31.215397 )
shenpu.image.attach(io: URI.open('https://www.thatsmags.com/image/view/201811/shenpu.jpg'), filename: 'shenpu')

pudi = Space.create(name: 'Pudi Boutique Hotel', address: '雁荡路99号', category: 'Other', access: 'indoor', features: ['dog_bowl', 'indoor'], longitude: 121.470061,latitude: 31.219298 )
pudi.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/22/b4effda6-3dcb-46c1-923f-6d8bc33be455.jpeg.680.0.webp.jpg'), filename: 'pudi')

fourpark = Space.create(name: 'Four Seasons Pet Park', address: '漕廊公路9133号', category: 'Park', access: 'outdoor, indoor', features: ['outdoor'], longitude: 121.158609,latitude: 30.784756 )
fourpark.image.attach(io: URI.open('https://api.sh-datastone.com/place_china_api/Public//upload/mainpic/20210419103355_1584725268.jpg'), filename: 'fourpark')

zhujiajiao = Space.create(name: 'Zhujiajiao Water Village', address: '西湖街24号', category: 'Park', access: 'outdoor, indoor', features: ['outdoor'], longitude: 121.053794,latitude: 31.107256 )
zhujiajiao.image.attach(io: URI.open('https://tse4-mm.cn.bing.net/th/id/OIP-C.GWEIPxI4U9yoa2wzVkKCngHaE7?pid=ImgDet&rs=1'), filename: 'zhujiajiao')

dongtan = Space.create(name: 'Dongtan Wetland Park', address: '东旺中路', category: 'Park', access: 'outdoor', features: ['outdoor'], longitude: 121.910484,latitude: 31.513998 )
dongtan.image.attach(io: URI.open('https://youimg1.c-ctrip.com/target/fd/tg/g1/M04/7D/2C/CghzfVWw2ZyABgtUAA7A82PayUA950_C_750_500.jpg?proc=source%2ftrip'), filename: 'dongtan')

luneurs = Space.create(name: 'Luneurs (Xingfu Li)', address: '番禺路381号', category: 'Cafe', access: 'outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.43049,latitude: 31.204387 )
luneurs.image.attach(io: URI.open('https://tse2-mm.cn.bing.net/th/id/OIP-C.Ry0xjGzwlEdBDTkcljRWGQHaE8?pid=ImgDet&rs=1'), filename: 'luneurs')

luneurs_huashan = Space.create(name: 'Luneurs (Huashan Lu)', address: '华山路888号', category: 'Cafe', access: 'outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.438727,latitude: 31.213066 )
luneurs_huashan.image.attach(io: URI.open('https://tse2-mm.cn.bing.net/th/id/OIP-C.Ry0xjGzwlEdBDTkcljRWGQHaE8?pid=ImgDet&rs=1'), filename: 'luneurs')

luneurs_mix = Space.create(name: 'Luneurs (MixC)', address: '万象城1楼, 吴中路1799号', category: 'Cafe', access: 'outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.367148,latitude: 31.169475 )
luneurs_mix.image.attach(io: URI.open('https://tse2-mm.cn.bing.net/th/id/OIP-C.Ry0xjGzwlEdBDTkcljRWGQHaE8?pid=ImgDet&rs=1'), filename: 'luneurs')

alimentari_anfu = Space.create(name: 'Alimentari (Anfu Lu)', address: '安福路158号', category: 'Restaurant', sub_category: 'Italian', access: 'outdoor', features: ['dog_bowl', 'outdoor'], longitude: 121.444823,latitude: 31.214358 )
alimentari_anfu.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/0df0ba8c-93fe-4e24-b5af-8b91471180d7.jpeg.680.0.webp'), filename: 'alimentari_anfu')

alimentari_piccolo = Space.create(name: 'Alimentari Piccolo', address: '番禺路390号103室内A区', category: 'Restaurant', sub_category: 'Italian', access: 'outdoor', features: ['dog_bowl', 'outdoor'], longitude: 121.429697,latitude: 31.203887 )
alimentari_piccolo.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2021/01/16/b29d3f4f-142e-4655-b8a3-6d87d42164fc.jpeg.680.0.webp'), filename: 'alimentari_piccolo')

bandit = Space.create(name: 'BANDIT (Julu Lu)', address: '巨鹿路423号', category: 'Bar', access: 'outdoor', features: ['dog_bowl','outdoor', 'indoor'], longitude: 121.457444,latitude: 31.222029 )
bandit.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2021/05/20/1f42c598-95af-481b-975e-8837e9da21a4.jpeg.680.0.webp'), filename: 'bandit')

bar_centrale = Space.create(name: 'Bar Centrale', address: '延平路135号', category: 'Bar', access: 'outdoor', features: ['dog_bowl', 'outdoor', 'indoor'], longitude: 121.440648,latitude: 31.229324 )
bar_centrale.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/45cee06c-e6a1-47f7-9560-e0adf525805b.jpeg.680.0.webp'), filename: 'bar_centrale')

bites_brews = Space.create(name: 'Bites x Brews', address: '武定路999号', category: 'Restaurant', sub_category: 'Western', access: 'outdoor', features: ['dog_bowl', 'outdoor', 'indoor'], longitude: 121.443062,latitude: 31.230022 )
bites_brews.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/11/18/1dd59f06-c19f-4064-91a4-4600d4d0c79d.jpeg.680.0.webp'), filename: 'bites_brews')

hugo = Space.create(name: 'Hugo Husky House', address: '永嘉路227', category: 'Cafe', access: 'outdoor', features: ['dog_bowl', 'outdoor', 'indoor'], longitude: 121.461019,latitude: 31.209927 )
hugo.image.attach(io: URI.open('https://img.timeoutshanghai.com/201910/20191023054825760.jpg'), filename: 'hugo')

lucky_mart = Space.create(name: 'Lucky Mart', address: '富民路158号', category: 'Bar', access: 'outdoor', features: ['dog_bowl', 'outdoor', 'indoor'], longitude: 121.451217,latitude: 31.218873 )
lucky_mart.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/21/e11437f8-9071-4f62-abe8-0fa664eb354d.jpeg.1200.0.webp'), filename: 'lucky_mart')

pass_residence = Space.create(name: 'PASS RESIDENCE', address: '巨鹿路318号', category: 'Restaurant', sub_category: 'Italian', access: 'outdoor', features: ['dog_bowl', 'indoor'], longitude: 121.458134,latitude: 31.222519 )
pass_residence.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/30/60eb456e-f698-438a-af58-c29b80a041d4.jpeg.1200.0.webp'), filename: 'pass_residence')

pho_to = Space.create(name: 'Pho To Shop', address: '武定路974号', category: 'Restaurant', sub_category: 'Vietnamese',access: 'outdoor', features: ['dog_bowl', 'outdoor', 'indoor'], longitude: 121.443148,latitude: 31.230328 )
pho_to.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/22/840d69b2-fb83-4182-908f-d4b949432515.jpeg.1360.0.webp'), filename: 'pho_to')

porcellino = Space.create(name: 'Porcellino', address: '愚园路753号', category: 'Restaurant', sub_category: 'Italian', access: 'outdoor', features: ['dog_bowl', 'outdoor', 'indoor'], longitude: 121.434723,latitude: 31.220018 )
porcellino.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/0f6fb1b7-cdda-465f-b0d9-64f2160265d6.jpeg.800.0.webp'), filename: 'porcellino')

solana = Space.create(name: 'Solana', address: '武定路1085号', category: 'Restaurant', sub_category: 'Spanish', access: 'outdoor', features: ['dog_bowl', 'indoor'], longitude: 121.442039,latitude: 31.229661 )
solana.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/74ab72c0-2040-48b8-96ef-b45e7c8c4a6f.jpeg.1360.0.webp'), filename: 'solana')

sumerian = Space.create(name: 'Sumerian', address: '陕西北路415号', category: 'Cafe', access: 'outdoor', features: ['dog_bowl', 'indoor'], longitude: 121.452921,latitude: 31.230266 )
sumerian.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/30/7f9eec20-ca04-48e7-b474-71347e251dda.jpeg.800.0.webp'), filename: 'sumerian')

tres_perros = Space.create(name: 'Tres Perros', address: '富民路148弄', category: 'Restaurant', sub_category: 'Spanish', access: 'outdoor', features: ['dog_bowl', 'indoor'], longitude: 121.451566,latitude: 31.217361 )
tres_perros.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/22/3bf8b933-f692-4208-bcb6-766a2cc4f283.jpeg.800.0.webp'), filename: 'tres_perros')

el_bodegon = Space.create(name: 'El Bodegon (Panyu Lu)', address: '番禺路326号', category: 'Restaurant', sub_category: 'Western', access: 'outdoor', features: ['dog_bowl', 'indoor', 'outdoor'], longitude: 121.429524,latitude: 31.204483 )
el_bodegon.image.attach(io: URI.open('https://images.smartshanghai.com.cn/uploads/compressed/2020/07/31/17248989-529d-42ce-b6fc-ad5b18987f72.jpeg.1360.906.webp'), filename: 'el_bodegon')

fifty_eight = Space.create(name: 'Fifty 8º Grill', address: '浦东南路111号', category: 'Restaurant', sub_category: 'French', access: 'outdoor', features: ['dog_bowl', 'dog_food', 'outdoor'], longitude: 121.507783,latitude: 31.243555 )
fifty_eight.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/30/7f9eec20-ca04-48e7-b474-71347e251dda.jpeg.800.0.webp'), filename: 'fifty_eight')

w_hotel = Space.create(name: 'W Hotel', address: '旅顺路66号', category: 'Other', access: 'outdoor', features: ['dog_bowl', 'dog_food', 'indoor'], longitude: 121.496369,latitude: 31.248984 )
w_hotel.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/09/10/50994c85-cc41-45ee-9240-fc692f038a80.jpeg.1125.0.webp'), filename: 'w_hotel')

mandarin = Space.create(name: 'Mandarin Oriental', address: '浦东南路111号', category: 'Other', access: 'outdoor', features: ['dog_bowl', 'dog_food', 'indoor'], longitude: 121.507783,latitude: 31.243555 )
mandarin.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/21a38ce0-9cc0-40a4-94d7-f752c9cb857c.jpeg.800.0.webp'), filename: 'mandarin')

wework = Space.create(name: 'WeWork', address: '威海路696号', category: 'Other', access: 'outdoor', features: ['indoor', 'outdoor'], longitude: 121.457963,latitude: 31.226706 )
wework.image.attach(io: URI.open('https://images.smartshanghai.com/uploads/compressed/2020/07/31/56866cc5-135c-459e-8350-9765b660d104.jpeg.800.0.webp'), filename: 'wework')

naughty = Space.create(name: 'Naughty Family Pets', address: '虹桥路2393号', category: 'Vet', access: 'outdoor', features: ['dog_bowl', 'dog_food', 'indoor'], longitude: 121.36561,latitude: 31.190185 )
naughty.image.attach(io: URI.open('https://www.thatsmags.com/image/view/201811/157.jpg'), filename: 'naughty')

haiwan = Space.create(name: 'Haiwan Forest Park', address: '海湾国家森林公园', category: 'Park', access: 'outdoor', features: ['outdoor'], longitude: 121.690609,latitude: 30.861518 )
haiwan.image.attach(io: URI.open('https://i0.wp.com/roadtriprascals.com/wp-content/uploads/2021/05/1417101049.jpg?w=1080&ssl=1'), filename: 'haiwan')

Space.update_all published: true
