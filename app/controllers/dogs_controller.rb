class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update_attributes(dog_params)
        render :show
    end

    def create
        dog = Dog.create(dog_params)
        if dog.valid?
            render json: dog
        else
            render json: dog.errors, status: :unrpocessable_entity
        end
    end

    private
    def dog_params
        params.require(:dog).permit(:name, :age, :enjoys, :photo)
    end

end
