class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :uf
      t.string :nome_uf
      t.string :mesorregiao_geografica
      t.string :nome_mesorregiao
      t.string :microrregiao_geografica
      t.string :nome_microrregiao
      t.string :municipio
      t.string :nome_municipio
      t.string :distrito
      t.string :nome_distrito
      t.string :subdistrito
      t.string :nome_subdistrito

      t.timestamps null: false
    end
  end
end
