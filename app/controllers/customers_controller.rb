class CustomersController < ApplicationController
    def index 
        customers = Customer.all
        render json: customers, only: [:name, :id]
    end
end
