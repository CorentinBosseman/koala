class UserProgramsController < ApplicationController
   def create
     @program    = Program.find(params[:program_id])
     @first_task = @program.tasks.find_by(position: 1)

     @user_program = UserProgram.new
     @user_program.user = current_user
     @user_program.program = @program
     @user_program.user_tasks.new(task: @first_task)
     @user_program.save

     redirect_to program_path(@program)
  end
end
