# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Building.create([
    { 
        nombre: 'Gran Torre Santiago', 
        direccion: 'Av. Andrés Bello 2425, Sector Nueva Tobalaba, Providencia', 
        ciudad: 'Santiago', 
    },
    { 
        nombre: 'Titanium La Portada', 
        direccion: 'Av. Del Condor 844, Las Condes', 
        ciudad: 'Santiago', 
    },
    { 
        nombre: 'Hotel Marriott Santiago de Chile', 
        direccion: 'Avenida Kennedy 5741, Las Condes', 
        ciudad: 'Santiago', 
    },
    { 
        nombre: 'Territoria 3000', 
        direccion: 'Isidora Goyenechea 3000, Las Condes', 
        ciudad: 'Santiago', 
    },
    { 
        nombre: 'Edificio Mar Del Sur', 
        direccion: 'Alvarez 58', 
        ciudad: 'Viña del Mar', 
    },
    { 
        nombre: 'Edificio Playa Paraiso Uno Y Dos ', 
        direccion: 'Las Torpederas 40', 
        ciudad: 'Valparaíso', 
    }
])


