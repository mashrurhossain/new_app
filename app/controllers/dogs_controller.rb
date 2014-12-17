class DogsController < ApplicationController
 
	def index
		@dogs = Dog.all
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(params.require(:dog).permit!)
		if @dog.save 
			flash[:notice] = "New dog succesfully created"
			redirect_to dogs_path
		else
			render 'new'
		end
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		@dog = Dog.find(params[:id])
		if @dog.update(params.require(:dog).permit!)
			flash[:notice] = "Dog was updated succesfuly"
			redirect_to dogs_path
		else
			render 'edit'
		end
	end
end
