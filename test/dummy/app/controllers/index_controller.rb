class IndexController < ApplicationController

  # 
  # 
  def index
    data = {}
    ruload = Ruload::Load.new
    data[:ruload] = $ruload


    file = "#{Rails.public_path}/cidades.txt"

    cidade_load = ruload.load("Cidade", file)
    data[:cidade_load] = cidade_load

    

    render :json => data
  end

end