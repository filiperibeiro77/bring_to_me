Category.create(id:1, name_category:"Eletrônicos")
Category.create(id:2, name_category:"Cosméticos")
Category.create(id:3, name_category:"Brinquedos")
Category.create(id:4, name_category:"Roupas")
Category.create(id:5, name_category:"Remédios")
Category.create(id:6, name_category:"Suplementos")
a = User.create(id:700, user_name:"Admin", password:"penajaca", user_cpf:"00000000000", user_sex:"Masculino", type:"Traveler")
c = Contact.create(id:700, user_email:"admin@admin.com", user_cel_phone:"1111111")
a.contact = c
a.save!
