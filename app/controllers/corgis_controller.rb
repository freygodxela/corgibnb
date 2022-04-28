class CorgisController < ApplicationController
  def index
    @corgis = Corgi.all
  end

  def new
    @corgi = Corgi.new
  end

  def create
    @corgi = Corgi.new(corgi_params)
    if @corgi.save
      redirect_to corgi_path(@corgi)
    else
      render :new
    end
  end
end

private

def corgi_params
  params.require(:corgi).permit(:name)
end
