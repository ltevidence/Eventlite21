class AvatarsController
  def create
    @event = Event.find(params[:user_id])
    @event.avatar.attach(params[:avatar])
  end
end