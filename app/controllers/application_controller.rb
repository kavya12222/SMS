class ApplicationController < ActionController::Base
  def signed_in_user
    unless admin_signed_in? or teacher_signed_in? or student_signed_in?
      flash.alert="please login as teacher/admin/student"
      redirect_to root_path
     end
  end
end
