class CatsController < ApplicationController
  def index
  	@cats = Cat.all
  end	

  def new
  	@cats = Cat.new
  end

  def create
  	@cats = Cat.new(cat_params)
	
	if @cats.save
	redirect_to cats_path, notice: "Data is added"
else 
	render 'new'
	end
end

  def edit
  	@cats = Cat.find(params[:id])
  end


  private 
  	def cat_params
  		params.require(:cat).permit(:name, :breed, :age)
  	end	
end
