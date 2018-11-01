class ExperiencesController < ApplicationController

  def index
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user_id = current_user.id
    if @experience.save
      redirect_to experiences_path
    else
      redirect_to experiences_path
    end
  end

  def show
    @experience = Experience.find_by(id: params[:id])
  end

  def edit
    @experience = Experience.find_by(id: params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    redirect_to experience_path(@experience)
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to experiences_path
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :description)
  end

end
