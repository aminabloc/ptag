class CheckinsController < ApplicationController
  before_action :set_checkin, only: [:show, :edit, :update, :destroy]

  # GET /checkins
  def index
    @checkins = Checkin.all
  end

  # GET /checkins/1
  def show
  end

  # GET /checkins/new
  def new
    @checkin = Checkin.new
  end

  # GET /checkins/1/edit
  def edit
  end

  # POST /checkins
  def create
    @checkin = Checkin.new(checkin_params)
    
    require 'twilio-ruby'

   

    if @checkin.save
       # put your own credentials here
        account_sid = 'ACd1e9f7da922c15da9afae9110b536c6b'
        auth_token = '3ffc456fe55a313fce86647aad3f9fad'
        
        # set up a client to talk to the Twilio REST API
        
        @client = Twilio::REST::Client.new account_sid, auth_token
        token = rand 200000...500000
        
        
        @client.api.account.messages.create(
          from: '+19292258924',
          to: "+12015036760",
          body: "Hey there! Here is your message from Pivottag #{token} "
        )
            
      redirect_to welcome_home_path, notice: 'Checkin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /checkins/1
  def update
    if @checkin.update(checkin_params)
      redirect_to @checkin, notice: 'Checkin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /checkins/1
  def destroy
    @checkin.destroy
    redirect_to checkins_url, notice: 'Checkin was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkin
      @checkin = Checkin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def checkin_params
      params.require(:checkin).permit(:phone, :hotel_id, :name)
    end
end
