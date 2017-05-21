class InstrumentsController < ApplicationController
  # Excess whitespace around `private` is not an issue by itself, but
  # was inconsistent with your other controllers

  def create
    @jampost = Jampost.find(params[:jampost_id])
    @instrument = @jampost.instruments.create(instrument_params)

    redirect_to jampost_path(@jampost)
  end

  # edited to nil out the instrument's user if that user chooses to release their
  # selected instrument
  def update
    @jampost = Jampost.find(params[:jampost_id])
    @instrument = @jampost.instruments.find(params[:id])
    if( @instrument.user == current_user &&
        params[:instrument] && params[:instrument][:release] )
      @instrument.user = nil
    else
      @instrument.user = current_user
    end
    @instrument.save
    redirect_to :back
  end

  def destroy
    @jampost = Jampost.find(params[:jampost_id])
    @instrument = @jampost.instruments.find(params[:id])
    @instrument.destroy
    redirect_to jampost_path(@jampost)
  end

  private

  def instrument_params
      puts "params"
      puts params
    params.require(:instrument).permit(:instrument, :release)
  end
end
