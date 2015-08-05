# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.delete_all
 
puts "Creating cities"
 
cities = City.create!([{name: "Cape Town", description: "x", image: "https://mail.google.com/mail/u/0/?ui=2&ik=ee619d5fa1&view=fimg&th=14ef7cf7327499d1&attid=0.2&disp=inline&realattid=f_icx2v2an2&safe=1&attbid=ANGjdJ8kr4wp5_wrejpXjflZhJj1rGAAydf9T6WAl5lVnZX6ed0YVgvPSa_KcDuHZInI6HHRB5ndb7jYzUuZgWfmJu35skZCdgA9EIWTFWhJHAj6MyfUs8XXQCUFvX4&ats=1438696901520&rm=14ef7cf7327499d1&zw&sz=w1367-h603"}, 
	 {name: "Johannesburg", description: "x", image: "https://mail.google.com/mail/u/0/?ui=2&ik=ee619d5fa1&view=fimg&th=14ef7cf7327499d1&attid=0.3&disp=inline&realattid=f_icx2wdnh3&safe=1&attbid=ANGjdJ9QBKR9mx9zwF1T5zR1DgQobhkRd-vNz9vt_ITfdtbICTts6wWrEzDUDWbUNJx6SgaMS1wksxC0Ohwc_Jgj9IamBLs3_aIjIdXTlyZ2Nf-QRBIff03jcPeNztE&ats=1438696901520&rm=14ef7cf7327499d1&zw&sz=w1367-h603"},
	 {name: "Manchester", description: "x", image: "https://mail.google.com/mail/u/0/?ui=2&ik=ee619d5fa1&view=fimg&th=14ef7cf7327499d1&attid=0.1&disp=inline&realattid=f_icx2utc71&safe=1&attbid=ANGjdJ_5aruD_-ro1B8hAXlhlvcXP2SA2V6YgrEJBgvKfRxS46PwrJ7XDtx32-wOmUK6r-I1iBlvBXNqXcpJ9EhRodBcBZg6-QNfVYGcvPUvk_7ufv83HzTyGfq8l_s&ats=1438696901520&rm=14ef7cf7327499d1&zw&sz=w1367-h603"}])

# puts "Creating campaigns"

# campaigns = Campaign.create({[]})