class CodesController < ApplicationController
  def index
    render json: Code.all
  end
end
