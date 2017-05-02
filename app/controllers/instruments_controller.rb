class InstrumentsController < ApplicationController

  def create
    @jampost = Jampost.find(params[:jampost_id])
    @instrument = @jampost.instruments.create(instrument_params)

    redirect_to jampost_path(@jampost)
  end

  def destroy
    @jampost = Jampost.find(params[:jampost_id])
    @instrument = @jampost.instruments.find(params[:id])
    @instrument.destroy
    redirect_to jampost_path(@jampost)
  end

  private
  def instrument_params
    params.require(:instrument).permit(:instrument)
  end
end
