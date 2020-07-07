class Api::TeamsController < ApplicationController
  def index
    @teams = Team.all
    render 'index.json.jb'
  end

  def show
    @team = Team.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def destroy
    @team = Team.find_by(id: params[:id])
    @team.destroy
    render json: {message: "You have successfully deleted the record."}
  end

  def update
    @team = Team.find_by(id: params[:id])
    @team.update(
      location: params[:location] || @team.location,
      nickname: params[:nickname] || @team.nickname,
      song: params[:song] || @team.song,
      championships: params[:championships] || @team.championships
    )
    render 'show.json.jb'
  end

  def create
    @team = Team.new(
      location: params[:location],
      nickname: params[:nickname],
      song: params[:song],
      championships: params[:championships]      
    )
    @team.save
    render 'show.json.jb'
  end
end
