class ElephantsController < ApplicationController

  def index
    elephants = Elephant.all
    render json: elephants
  end


  def create #This is breaking if there is no user instead of rendering the bottom message
    if current_user.id
      elephant = Elephant.new(
        name: params[:name],
        trunk_size: params[:trunk_size],
        breed: params[:breed],
        user_id: current_user.id
      )
      if elephant.save
        render json: elephant
      else
        render json: elephant.errors.full_messages
      end
    else
      render json: {message: "log in fool"}
    end
  end

end
