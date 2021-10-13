class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
     def index
        users=User.all
        render json: users
    end
    
    def create
        # binding.pry
        user = User.create(user_params)
        puts "did it save?"
        # user.save
        puts user.save
        render json: user
    end 

    def login
        user = User.find_by(name: user_params[:name])
        render json: user
    end


    private 
    def user_params
        params.require(:user).permit(:name, :password, :account_balance)
    end

end
