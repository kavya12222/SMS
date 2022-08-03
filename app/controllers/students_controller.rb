class StudentsController <ApplicationController
  before_action :signed_in_user

  def index
    @students=Student.all
  end

  def show
      @student = Student.find(params[:id])
  end

end




