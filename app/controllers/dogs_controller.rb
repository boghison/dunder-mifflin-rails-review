class DogsController < ApplicationController
    def show
        @dog = Dog.find(params[:id])
    end

    def index
        if params[:sorted].nil?
            @dogs = Dog.all
        else
            @dogs = Dog.all.sort_by(&:employee_count).reverse!
        end
    end
end
