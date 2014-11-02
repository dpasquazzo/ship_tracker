class ShipsController < ApplicationController
#     Prefix Verb   URI Pattern           Controller#Action
#       root GET    /                     ships#index
#      ships POST   /ships(.:format)      ships#create
#  new_ships GET    /ships/new(.:format)  ships#new
# edit_ships GET    /ships/edit(.:format) ships#edit
#            GET    /ships(.:format)      ships#show
#            PATCH  /ships(.:format)      ships#update
#            PUT    /ships(.:format)      ships#update
#            DELETE /ships(.:format)      ships#destroy
  include ShipsSearch

  def index
    @ships = Ship.all
  end

  def search
    if params[:imonumber]
      result = basic_search(params[:imonumber])
    elsif params[:name]
      result = name_search(params[:name])
    end
    render json: result
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
