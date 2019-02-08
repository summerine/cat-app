class CatsController < ApplicationController
  def index
  	@cats = Cat.all
  end

  def new
  	@cats = Cat.new
  end

  def create
  	cats = Cat.create(cat_params)

  	redirect_to cats_path
  end	

  def edit
  end
end
