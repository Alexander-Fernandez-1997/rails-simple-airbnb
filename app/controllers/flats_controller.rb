class FlatsController < ApplicationController
def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @status = ""

    def new
      @flat = Flat.new
    end

    def create
      @flat = Flat.new(flat_creator)
      @flat.save 
      redirect_to flats_path
    end

    def edit
      @flat = Flat.find(params[:id])
    end

    def update
      @flat = Flat.find(params[:id])
      @flat.update(flat_creator)
      redirect_to flat_path(@flat)
    end

    def destroy
      @flat = Flat.find(params[:id])
      @flat.destroy
      redirect_to flats_path
    end

private

    def flat_creator
      params.require(:flat).permit(:name, address:, :description, price_per_night:, number_of_guests:)
    end

  

end
