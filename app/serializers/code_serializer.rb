class CodeSerializer < ActiveModel::Serializer
  attributes :uf, :nome_uf, :mesorregiao_geografica, :nome_mesorregiao, :microrregiao_geografica, :nome_microrregiao, :municipio, :nome_municipio, :distrito, :nome_distrito, :subdistrito, :nome_subdistrito
end
