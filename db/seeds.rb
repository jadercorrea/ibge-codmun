# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

file_path = File.expand_path('data/dtb_2013.csv')

puts 'Copying IBGE CSV data file to development database.'

CSV.foreach(file_path) do |row|
  Code.create!({
    uf: row[0],
    nome_uf: row[1],
    mesorregiao_geografica: row[2],
    nome_mesorregiao: row[3],
    microrregiao_geografica: row[4],
    nome_microrregiao: row[5],
    municipio: row[6],
    nome_municipio: row[7],
    distrito: row[8],
    nome_distrito: row[9],
    subdistrito: row[10],
    nome_subdistrito: row[11] || ''
  })
  puts row[7]
end
