class StudentsController <ApplicationController
  before_action :signed_in_user

  def index
    @students=Student.all
  end

  def show
    # if admin_signed_in?
      @student = Student.find(params[:id])
    # else
    #   redirect_to admin_session_path
    # # end
  end

  # @student=Student.all

  # def edit
  #     @student = Student.find(params[:id])
  # end
  # def update
  #   @student = Student.find(params[:id])
  #   if @student.update(detail_params)
  #     flash[:notice] = "details was updated successfully"
  #     if admin_signed_in?
  #       redirect_to details_path(@student.student.id)
  #     else
  #       redirect_to root_path
  #     end
  #   else
  #     render edit__path
    end




