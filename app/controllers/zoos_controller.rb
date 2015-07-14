class ZoosController < ApplicationController
	before_action :find_zoo, only: [:show, :edit, :update, :destroy] #This cuts down on your code, finds by id

  def index
  	@zoos = Zoo.all
  end

  def show
  end

  def new
  	@zoo = Zoo.new
  end

  def create
  	@zoo = Zoo.new(zoo_params)
  	if @zoo.save
  		flash[:success]= "Successfully Created a Zoo!"
  		#ask about notice, solution for hw over weekend
  		redirect_to zoos_path
  	else 
  		render :new
  	end
  end

  def edit
  end

  def update
  	@zoo.update zoo_params
  	if @zoo.save
  		flash[:success]= "Successfully Edited a Zoo!"
  		redirect_to zoo_path
  	else 
  		render :edit
  	end
  end 

  def destroy
  	@zoo.destroy
  	flash[:success]= "You have closed this Zoo"
  	redirect_to zoos_path
  end

  private
  	params.require(:zoo)permit(:name, :location, :year)
  end

end
