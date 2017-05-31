class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
  
  def new
  end
  
  def create
    @actor = Actor.create(
                          name: params[:name],
                          gender: params[:gender],
                          zodiac_sign: params[:zodiac_sign]
      )
  end
  
  def edit
    @actor = Actor.find(params[:id])
  end
  
  def show
    @actor = Actor.find(params[:id])
  end
  
  def update
    @actor = Actor.find(params[:id])
    @actor.update(
                  name: params[:name],
                  gender: params[:gender],
                  zodiac_sign: params[:zodiac_sign])
  end
  
  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
  end
end
