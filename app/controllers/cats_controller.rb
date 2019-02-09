class CatsController < ApplicationController
  def index
  	@cats = Cat.all
  end

  def show
  	@cats = Cat.find(params[:id])
  end	

  def new
  	@cats = Cat.new
  end

  def create
  	cats = Cat.create(cat_params)

  	if @cats.save 
  		redirect_to cats_path
  	else
  		render 'new'
  	end
  			
  end	

  def edit
  	@cats = Cat.find(params[:id])
  end
end
