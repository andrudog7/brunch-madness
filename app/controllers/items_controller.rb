class ItemsController < ApplicationController
    def index 
        items = Item.all 
        render json: items, only: [:id, :name, :price, :icon]
    end
end
