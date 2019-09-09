class TopicsController < ApplicationController
    def index
        @employees = Employee.all
    end

    def new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            alias: params[:alias],
            title: params[:title],
            office: params[:office],
            dog_id: params[:id]
            )

        # @employee.dog = Dog.find(params[:id])
        redirect_to "/employees"
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def edit
        @dogs = Dog.all
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.first_name = params[:first_name]
        @employee.last_name = params[:last_name]
        @employee.alias = params[:alias]
        @employee.title = params[:title]
        @employee.office = params[:office]
        @employee.dog_id = params[:idd]
        @employee.save
        redirect_to "/employees/#{@employee.id}"
    end

end
