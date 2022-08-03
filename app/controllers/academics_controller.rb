class AcademicsController < ApplicationController

  def edit
    # if admin_signed_in? or teacher_signed_in?
    @academic = Academic.find(params[:id])
    # else
    #   redirect_to admin_session_path
    #   end
  end

  def update
    @academic= Academic.find(params[:id])

    if @academic.update(academic_params)
      flash[:notice]="Record was updated successfully"
         if admin_signed_in? or teacher_signed_in?
           redirect_to academics_path(@academic.student.id)
         else
          redirect_to students_path
         end
      else
         render edit_academic_path
    end
    end
end

private
 def academic_params
  params.require(:academic).permit(:Attendance, :Midterm_marks, :Midterm_percentage,:Annual_marks, :Annual_percentage, :Fee_details,:Remark, :student_id)
 end