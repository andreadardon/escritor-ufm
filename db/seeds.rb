# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Week.create(
  title: "Semana 1",
  description: "Ejercicios de la primera semana."
  #week_id: 1
  )

Week.create(
  title: "Semana 2",
  description: "Ejercicios de la segunda semana."
  #week_id: 2
  )

Week.create(
  title: "Semana 3",
  description: "Ejercicios de la tercera semana."
  #week_id: 3
  )

Week.create(
  title: "Semana 4",
  description: "Ejercicios de la cuarta semana."
  #week_id: 4
  )

Week.create(
  title: "Semana 5",
  description: "Ejercicios de la quinta semana."
  #week_id: 5
  )

Week.create(
  title: "Semana 6",
  description: "Ejercicios de la sexta semana."
  #week_id: 6
  )


#Semana 1

e = Exercise.create(
  title: "Ejercicio 1",
  instructions: "Escribe una historia de 100 palabras que comience con 'El león lo observaba.' ",
  week_id: 1
  )

e = Exercise.create(
  title: "Ejercicio 2",
  instructions: "Escribe una historia de 100 palabras que comience con 'El león lo observaba.' ",
  week_id: 1,
  previous_exercise_id: e.id
  )

e = Exercise.create(
  title: "Ejercicio 3",
  instructions: "Escribe una historia de 100 palabras que comience con 'El león lo observaba.' ",
  week_id: 1,
  previous_exercise_id: e.id
  )

#Semana 2

e = Exercise.create(
  title: "Ejercicio 1",
  instructions: "Escribe un ensayo sobre la familia y la sociedad.",
  week_id: 2
  )

e = Exercise.create(
  title: "Ejercicio 2",
  instructions: "Escribe un ensayo sobre la familia y la sociedad.",
  week_id: 2,
  previous_exercise_id: e.id
  )

e = Exercise.create(
  title: "Ejercicio 3",
  instructions: "Escribe un ensayo sobre la familia y la sociedad.",
  week_id: 2,
  previous_exercise_id: e.id
  )

#Semana 3

e = Exercise.create(
  title: "Ejercicio 1",
  instructions: "Describe un día de campo.",
  week_id: 3
  )

e = Exercise.create(
  title: "Ejercicio 2",
  instructions: "Describe un día de campo.",
  week_id: 3,
  previous_exercise_id: e.id
  )

e = Exercise.create(
  title: "Ejercicio 3",
  instructions: "Describe un día de campo.",
  week_id: 3,
  previous_exercise_id: e.id
  )

#Semana 4

e = Exercise.create(
  title: "Ejercicio 1",
  instructions: "Defiende tu ideología política.",
  week_id: 4
  )

e = Exercise.create(
  title: "Ejercicio 2",
  instructions: "Defiende tu ideología política.",
  week_id: 4,
  previous_exercise_id: e.id
  )

e = Exercise.create(
  title: "Ejercicio 3",
  instructions: "Defiende tu ideología política.",
  week_id: 4,
  previous_exercise_id: e.id
  )

#Semana 5

e = Exercise.create(
  title: "Ejercicio 1",
  instructions: "Escribe un artículo de opinión sobre cualquier tema",
  week_id: 5
  )

e = Exercise.create(
  title: "Ejercicio 2",
  instructions: "Escribe un artículo de opinión sobre cualquier tema",
  week_id: 5,
  previous_exercise_id: e.id
  )

e = Exercise.create(
  title: "Ejercicio 3",
  instructions: "Escribe un artículo de opinión sobre cualquier tema",
  week_id: 5,
  previous_exercise_id: e.id
  )

#Semana 6

e = Exercise.create(
  title: "Ejercicio 1",
  instructions: "Escribe una historia ambientada en el Siglo XIX.",
  week_id: 6,
  previous_exercise_id: e.id
  )

e =  Exercise.create(
  title: "Ejercicio 2",
  instructions: "Escribe una historia ambientada en el Siglo XIX.",
  week_id: 6,
  previous_exercise_id: e.id
  )

e = Exercise.create(
  title: "Ejercicio 3",
  instructions: "Escribe una historia ambientada en el Siglo XIX.",
  week_id: 6,
  previous_exercise_id: e.id
  )


