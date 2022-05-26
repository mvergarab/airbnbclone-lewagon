class ExperiencesController < ApplicationController
  def index
    if params[:query].present?
      @experiences = Experience.where("city ILIKE ?", "%#{params[:query]}%")
    else
      @experiences = Experience.all
    end
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.save
      redirect_to experiences_path, notice: 'Experience was successfully created.'
    else
      render :new
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    redirect_to experience_path(@experience)
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to experiences_path, status: :see_other

  end

  private

  def experience_params
    params.require(:experience).permit(:name, :city, :price, :description, :photo)
  end

end
