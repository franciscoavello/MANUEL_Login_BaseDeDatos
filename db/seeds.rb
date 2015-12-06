# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  ian = Alumno.create nombre: 'Ian', apellido_paterno: 'Mejias',
    apellido_materno: 'Conejeros'

  ihc = Curso.create nombre: 'IHC'

  ihc.profesor = Profesor.create(nombre: 'Edmundo', apellido: 'Leiva')
  ihc.save

  g1 = Grupo.create nombre: 'Estandares',
    jefe_grupo: ian,
    curso: ihc
end
