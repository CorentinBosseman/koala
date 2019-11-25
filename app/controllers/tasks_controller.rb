class TasksController < ApplicationController
  def show
    @task      = Task.find(params[:id])
    @user_task = UserTask.joins(task: :program, user_program: :user).find_by(user_programs: { user: current_user, program: @task.program })
  end
end
