# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Exercise.create(name: "Core", explain: "Core exercise are exercises that focus on either the stabilzation,
 endurance or strengthening of the core muscles. Core exercises focus on the abdomen, 
 the lower abdomen and hips, the obliques, stabilizing muslces, the spine and the back muslces", img: "https://redefiningstrength.com/wp-content/uploads/2015/03/crunchless-core-exercises.jpg")
Exercise.create(name: "Cardio", explain: "This could be any form of activity whether it is riding a bike, going for a jog, 
or going for a walk. As long as you are exerting yourself during the activity then you are training your cardiorespiratory systemh."  , img: "https://787300.smushcdn.com/1494239/wp-content/uploads/2014/03/lunge-matrix-e1417976689565.jpg?lossy=0&strip=1&webp=1")
Exercise.create(name: "Flexibility",explain: "These programs generally begin with a gentle warm-up to increase your body's core temperature. Then, they progress through a series of stretching exercises to lengthen the muscles in your feet
, your legs, your hips and torso, and finally up through the head and neck." , img: "https://i.pinimg.com/564x/c1/38/46/c13846a7b936cb976cabdca75a61e777.jpg")
Exercise.create(name: "push up", img: "https://media1.popsugar-assets.com/files/thumbor/g3IqvrBcCL8PCn2kV4oYF5LCXy0/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2016/11/21/628/n/1922729/0e7e9800cb65fd44_Tricep-Push-Up.jpg")