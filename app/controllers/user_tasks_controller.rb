class UserTasksController < ApplicationController
  def done
    @user_task = UserTask.find(params[:id])
    @user_task.completed = "true"
    @user_task.save
    redirect_to program_path(@user_task.task.program)
  end
end
