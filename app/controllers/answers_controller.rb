class AnswersController < ApplicationController

  def index
    @answers = Answer.all
    if current_user.role == "admin"
      render "index_for_admins"
    else
      render "index_for_users"
    end
  end


  def new
    @answer = Answer.new
    @exercise = Exercise.find(params[:exercise_id])
  end

  def create
    # Answer belongs to exercise and it lets you go to the next exercise. 
    @answer = Answer.new(params.require(:answer).permit(:body, :exercise_id))
    @exercise = Exercise.find(params[:answer][:exercise_id])
    @next_exercise = @exercise.next_exercise

    @answer.user = current_user
    if @answer.save
     flash[:notice] = "Se ha guardado tu respuesta." 
      if @next_exercise 
        redirect_to week_exercise_path(@next_exercise.week, @next_exercise)
      else  
       #After saving an exercise redirect to next exercise. 
       redirect_to complete_week_exercises_path(@exercise.week)
      end
    else
     flash[:error] = "Hubo un error al guardar tu respuesta. Inténtalo de nuevo."
     render :new
    end
   end
end