namespace :pull_csv do
  desc 'Copy IBGE CSV data file to development database.'
  require 'csv'

  task :to_development_db do
    file_path = '/Users/jader/www/projects/ibge_codmun/data/dtb_2013.csv'
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
        nome_subdistrito: row[11]
      })
    end
  end
end
