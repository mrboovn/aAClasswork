class Cat < ApplicationController
  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def index 
    @cat = Cat.all 
    render :index 
  end

  

  private 
  def cat_params 
    params.require(:birth_date, :color, :age, :sex, :description)
end