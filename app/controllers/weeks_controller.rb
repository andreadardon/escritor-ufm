class WeeksController < ApplicationController
  before_action :authenticate_user!
def index
    @weeks = Week.all
  end

  def create
     @Week = Week.new(params.require(:post).permit(:title, :body))
     if @week.save
       flash[:notice] = "Se ha guardado."
       redirect_to @week
     else
       flash[:error] = "Hubo un error al guardar. Inténtalo de nuevo."
       render :new
     end
   end

  def show
    @week = Week.find(params[:id])
    @exercise = @week.exercises.first
  end

end

def new
    @week = Week.new
  end