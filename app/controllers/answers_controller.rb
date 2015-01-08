class AnswersController < ApplicationController

  def index
    @answers = Answer.all
    authorize @answers  
  end


  def new
    @answer = Answer.new
    @exercise = Exercise.find(params[:exercise_id])
  end

  def create
    # Answer belongs to exercise and it lets you go to the next exercise. 
     @answer = Answer.new(params.require(:answer).permit(:body, :exercise_id))

     @answer.user = current_user
     @exercise = Exercise.find(params[:answer][:exercise_id].to_i + 1)
     if @answer.save
       flash[:notice] = "Se ha guardado tu respuesta." 
       redirect_to week_exercise_path(Week.first, @exercise)
       #After saving an exercise redirect to next exercise. 
     else
       flash[:error] = "Hubo un error al guardar tu respuesta. Inténtalo de nuevo."
       render :new
     end
   end
end