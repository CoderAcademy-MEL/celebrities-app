class CelebritiesController < ApplicationController
    before_action :find_celebrity, only: [:show, :edit, :update, :destroy] 

    #Show all celebrities
    def index
      @celebrities = Celebrity.all.order(:id)
    end

    def new 
      @celebrity = Celebrity.new
    end 

    #Show a single celebrity
    def show
    end

    #Create a new celebrity
    def create
      # @celebrity = Celebrity.create(
      #   name: params[:celebrity][:name],
      #   notability: params[:celebrity][:notability],
      #   profile_picture: params[:celebrity][:profile_picture]
      # )
      @celebrity = Celebrity.create(celebrity_params)
      redirect_to celebrity_path(@celebrity.id)
    end

    def edit 
    end

    #Update a celebrity
    def update
      # @celebrity.update(
      #   name: params[:celebrity][:name],
      #   notability: params[:celebrity][:notability],
      #   profile_picture: params[:celebrity][:profile_picture]
      # )
      @celebrity.update(celebrity_params)
      redirect_to celebrity_path(@celebrity.id)
    end

    #Remove a celebrity
    def destroy
      @celebrity.destroy
      redirect_to root_path
    end

    private

    def celebrity_params 
      params.require(:celebrity).permit(:name, :notability, :profile_picture)
    end

    def find_celebrity
      @celebrity = Celebrity.find(params[:id])
    end 
end
