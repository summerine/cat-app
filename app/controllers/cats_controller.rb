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
  	@cats = Cat.new(cat_params)
	
	if @cats.save
	flash[:success] = "Data has been added!"	
	redirect_to cats_path
else 
	render 'new'
	end
end

  def edit
  	@cats = Cat.find(params[:id])
  end

  def update 
  	@cats = Cat.find(params[:id])
  
  if @cats.update(cat_params)
  	flash[:success] = "Data has been updated!"
  	redirect_to cats_path
 else
 	render 'edit'	
	end
end	

 def destroy
 	@cats = Cat.find(params[:id])
 	@cats.destroy
  flash[:alert] = "Data has been deleted!"
 	redirect_to cats_path	

end

  private 
  	def cat_params
  		params.require(:cat).permit(:name, :breed, :age)
  	end	
end
