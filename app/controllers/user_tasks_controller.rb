class UserTasksController < ApplicationController
  def done
    @user_task = UserTask.find(params[:id])
    program = @user_task.task.program

    @user_task.completed = true
    current_user.update_attributes(points: (current_user.points + 20))
    @user_task.save

    next_task = Task.find_by(program: program, position: @user_task.task.position + 1)

    if next_task
      UserTask.create(user_program: @user_task.user_program, task: next_task)
    else
      @user_task.user_program.update(completed: true)
      if program.position == 1
        current_user.update_attributes(points: (current_user.points + 50))
      elsif program.position == 2
        current_user.update_attributes(points: (current_user.points + 80))
      elsif program.position == 3
        current_user.update_attributes(points: (current_user.points + 130))
      end

    end

    redirect_to program_path(program)
  end
end
