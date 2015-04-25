class CodesController < ApplicationController
  def show
    render json: find_code
  end

  def index
    render json: Code.all
  end

  private

  def find_code
    key = key_matcher.first
    Code.find_by(key => params[key])
  end

  def key_matcher
    fields = %w(uf nome_uf mesorregiao_geografica nome_mesorregiao microrregiao_geografica nome_microrregiao municipio nome_municipio distrito nome_distrito subdistrito nome_subdistrito)
    fields & params.keys
  end

  def code_params
    params.require(:code).permit(:uf, :nome_uf, :mesorregiao_geografica, :nome_mesorregiao, :microrregiao_geografica, :nome_microrregiao, :municipio, :nome_municipio, :distrito, :nome_distrito, :subdistrito, :nome_subdistrito)
  end
end
