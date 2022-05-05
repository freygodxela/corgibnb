class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @corgi = Corgi.find(params[:corgi_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @corgi = Corgi.find(params[:corgi_id])
    @booking.corgi = @corgi
    @booking.user = current_user
    if @booking.save
      redirect_to corgi_booking_path(@corgi, @booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to corgi_bookings_path
  end

 private

  def booking_params
    params.require(:booking).permit(:booking_date, :corgi_id, :user_id)
  end
end
