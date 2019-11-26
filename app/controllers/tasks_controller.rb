class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
    @program = Program.find(params[:program_id])
    @user_task = UserTask.joins(task: :program, user_program: :user).
      find_by(user_programs: { user: current_user, program: @task.program }, task: @task)
  end
end
