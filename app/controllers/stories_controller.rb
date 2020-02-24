class StoriesController < ApplicationController
  def index
    render :json => Story.all
  end

  def show
    render :json => Story.find(params[:id])
  end

  def create
    redirect_to Story.create!(story_params)
  end

  def update
    story = Story.find(params[:id])
    story.update!(story_params)
    redirect_to story
  end

  private
  def story_params
    params.require(:story).permit(:name)
  end
end
