class EventsController < ApplicationController
  def index
    render :json => Event.all
  end

  def show
    render :json => Event.find(params[:id])
  end

  def create
    redirect_to Event.create!(event_params)
  end

  def update
    event = Event.find(params[:id])
    event.update!(event_params)
    redirect_to event
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :date, :approximate)
  end
end
