class UserTasksController < ApplicationController
  def done
    @user_task = UserTask.find(params[:id])
    program = @user_task.task.program

    @user_task.completed = "true"
    @user_task.save

    next_task = Task.find_by(program: program, position: @user_task.task.position + 1)

    if next_task
      UserTask.create(user_program: @user_task.user_program, task: next_task)
    else
      @user_task.user_program.update(completed: true)
    end

    redirect_to program_path(program)
  end
end
