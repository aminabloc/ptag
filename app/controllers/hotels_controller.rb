class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  # GET /hotels
  def index
    @hotels = Hotel.all
  end

  # GET /hotels/1
  def show
    @hotel = Hotel.find_by_subdomain(params[:subdomain])
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  # GET /hotels/1/edit
  def edit
  end
  
  def qr
    @hotel = Hotel.find_by_subdomain(params[:subdomain])
    require 'rqrcode'

qrcode = RQRCode::QRCode.new("#{root_url}/?hotel=#{@hotel.subdomain}", "pivottag.com")

  # NOTE: showing with default options specified explicitly
  @png = qrcode.as_png(
    resize_gte_to: false,
    resize_exactly_to: false,
    fill: 'white',
    color: 'black',
    size: 120,
    border_modules: 4,
    module_px_size: 6,
    file: nil  # path to write
  )
  

  end

  # POST /hotels
  def create

    
    if @hotel.save
      redirect_to @hotel, notice: 'Hotel was successfully created.'
      
      
    else
      render :new
    end
  end

  # PATCH/PUT /hotels/1
  def update
    if @hotel.update(hotel_params)
      redirect_to @hotel, notice: 'Hotel was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /hotels/1
  def destroy
    @hotel.destroy
    redirect_to hotels_url, notice: 'Hotel was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hotel_params
      params.require(:hotel).permit(:name, :qr_code, :location, :address, :subdomain)
    end
end
