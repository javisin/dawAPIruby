# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'Admin', kind: '1', email:'admin@gmail.com', password: '12345', name: 'admin',
surname: 'super',postalcode: '3433',country: 'españa',phone: '744747')

carousel = Carousel.create!
carousel.image.attach(io: File.open("#{Rails.root}/app/images/carruselmujer.jpg"), filename: "carruselmujer.jpg")
carousel = Carousel.create!
carousel.image.attach(io: File.open("#{Rails.root}/app/images/fotocarrusel.jpg"), filename: "fotocarrusel.jpg")
carousel = Carousel.create!
carousel.image.attach(io: File.open("#{Rails.root}/app/images/tiendahombre.jpg"), filename: "tiendahombre.jpg")

product= Product.create(name: 'Pijama largo de hombre', brand: 'El Corte Inglés',
                        description: 'Pijama largo compuesto por una camiseta de punto en color gris con cuello redondo y bolsillo en el pecho, y pantalón de tela en color gris con estampado de cuadros.',
                        gender: 'male', colors: 'verde', price: '23€',
                        new: '0', trending: '1')
product.image.attach(io: File.open("#{Rails.root}/app/images/pijama.jpg"), filename: "pijama.jpg")

product= Product.create(name: 'Chaqueta de piel', brand: 'Bershka',
                        description: 'Chaqueta abrigada',
                        gender: 'female', colors: 'rojo', price: '75,99€',
                        new: '1', trending: '1')
product.image.attach(io: File.open("#{Rails.root}/app/images/chaquetaPiel.jpg"), filename: "chaquetaPiel.jpg")

product= Product.create(name: 'Vaquero pitillo fino de tiro alto', brand: 'Bershka',
                        description: 'Ivy es nuestro ajuste más alto y más delgado de la gama y tiene una talle super alto sobre de las caderas y ajuste más ajustado desde la parte superior hasta la parte inferior con la longitud del tobillo',
                        gender: 'female', colors: 'rojo', price: '36,95€',
                        new: '1', trending: '1')
product.image.attach(io: File.open("#{Rails.root}/app/images/vaqueroNegro.jpg"), filename: "vaqueroNegro.jpg")

product= Product.create(name: 'Shorts negros', brand: 'Bershka',
                        description: 'Shorts negros colección verano',
                        gender: 'female', colors: 'rojo', price: '16,95€',
                        new: '1', trending: '1')
product.image.attach(io: File.open("#{Rails.root}/app/images/shortsNegros.jpg"), filename: "shortsNegros.jpg")

product= Product.create(name: 'Falda negra', brand: 'Bershka',
                        description: 'Falda negra perfecta para el verano y salir de fiesta',
                        gender: 'female', colors: 'negro', price: '59,99€',
                        new: '1', trending: '1')
product.image.attach(io: File.open("#{Rails.root}/app/images/faldaNegra.jpg"), filename: "faldaNegra.jpg")

product= Product.create(name: 'Blusa', brand: 'Bershka',
                        description: 'Blusa azul y blanca combinada',
                        gender: 'female', colors: 'azul', price: '19,99€',
                        new: '0', trending: '1')
product.image.attach(io: File.open("#{Rails.root}/app/images/blusaAzul.jpg"), filename: "blusaAzul.jpg")

product= Product.create(name: 'Abrigo largo', brand: 'Bershka',
                        description: 'Abrigo invernal de pelo blanco',
                        gender: 'female', colors: 'blanco', price: '99,99€',
                        new: '1', trending: '0')
product.image.attach(io: File.open("#{Rails.root}/app/images/abrigoBlanco.jpg"), filename: "abrigoBlanco.jpg")

product= Product.create(name: 'Vestido corto', brand: 'Bershka',
                        description: 'Vestido corto blanco de verano',
                        gender: 'female', colors: 'blanco', price: '39,99€',
                        new: '1', trending: '1')
product.image.attach(io: File.open("#{Rails.root}/app/images/VestidoBlanco.jpg"), filename: "VestidoBlanco.jpg")

product= Product.create(name: 'Polo',brand: 'Bershka',description: 'Polo',colors: 'rojo',gender: 'male',
                        price: "49,99€", new: 0,trending: 1)
product.image.attach(io: File.open("#{Rails.root}/app/images/poloRojo.jpg"), filename: "poloRojo.jpg")

product= Product.create(name: 'Traje',brand: 'Bershka',description: 'Traje formal de la mejor calidad.',
                        colors: 'negro',gender: 'male', price: "99,99€", new: 1,trending: 1)
product.image.attach(io: File.open("#{Rails.root}/app/images/trajeChaqueta.jpg"), filename: "trajeChaqueta.jpg")

product= Product.create(name: 'Zapatillas deportivas',brand: 'Nike',description: 'Zapatillas deportivas blancas, logo rojo.',
                        colors: 'blanco',gender: 'male', price: "89,95€", new: 1, trending: 1)
product.image.attach(io: File.open("#{Rails.root}/app/images/zapatillasNike.jpg"), filename: "zapatillasNike.jpg")
