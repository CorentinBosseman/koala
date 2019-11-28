class UserTasksController < ApplicationController
  def done
    @user_task = UserTask.find(params[:id])
    program = @user_task.task.program

    @user_task.update(completed: true)
    current_user.update(points: (current_user.points + 20))
    recalculate_level!
    next_task = Task.find_by(program: program, position: @user_task.task.position + 1)

    if next_task
      UserTask.create(user_program: @user_task.user_program, task: next_task)
    else
      @user_task.user_program.update(completed: true)

      if program.position == 1
        current_user.update(points: (current_user.points + 50))
        recalculate_level!
      elsif program.position == 2
        current_user.update(points: (current_user.points + 80))
        recalculate_level!

      else
        current_user.update(points: (current_user.points + 130))
        recalculate_level!

      end
    end

    redirect_to program_path(program)
  end

  def recalculate_level!
    current_user.update(level: User.level_from_points(current_user.points))
  end
end
