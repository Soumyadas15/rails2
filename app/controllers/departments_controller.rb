class DepartmentsController < ApplicationController
    before_action :set_department, except: %i[index create]

    def create
        @department = Department.new(department_params)
        if @department.save
            render json: @department, status: :created, location: @department
        else
            render json: @department.errors, status: :unprocessable_entity
        end
    end

    def index
        @departments = Department.all
        render json: @departments
    end

    def show
        render json: @department
    end

    def destroy
        @department.destroy
        head :no_content
    end

    private
        def set_department
            @department = Department.find(params[:id])
        end

        def department_params
            params.require(:department).permit(:name)
        end
end