class CelebritiesController < ApplicationController
    #Show all celebrities
    def index
      @celebrities = Celebrity.all
    end

    #Show a single celebrity
    def show
      id = params[:id].to_i
      @celebrity = Celebrity.find(id)
    end

    #Create a new celebrity
    def create
      @celebrity = Celebrity.create(
        name: params[:celebrity][:name],
        notability: params[:celebrity][:notability],
        profile_picture: params[:celebrity][:profile_picture]
      )
      redirect_to celebrity_path(@celebrity.id)
    end

    #Update a celebrity
    def update
    end

    #Remove a celebrity
    def destroy
    end
end
