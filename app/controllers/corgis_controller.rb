class CorgisController < ApplicationController
  def index
    @corgis = Corgi.all
    @markers = @corgis.geocoded.map do |corgi|
      {
        lat: corgi.latitude,
        lng: corgi.longitude,
        info_window: render_to_string(partial: "info_window", locals: { corgi: corgi })
      }
    end
  end

  def show
    @corgi = Corgi.find(params[:id])
  end

  def new
    @corgi = Corgi.new
  end

  def create
    @corgi = Corgi.new(corgi_params)
    @corgi.user = current_user
    if @corgi.save!
      redirect_to corgi_path(@corgi)
    else
      render :new
    end
  end


 private

  def corgi_params
    params.require(:corgi).permit(:name, :photo, :description, :price, :address)
  end
end

# comment
