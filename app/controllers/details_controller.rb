class DetailsController < ApplicationController

  def edit
    @detail = Detail.find(params[:id])
  end

  def update
    @detail = Detail.find(params[:id])
    if @detail.update(detail_params)
      flash[:notice] = "details was updated successfully"
      if admin_signed_in?
        redirect_to details_path(@detail.student.id)
      else
        redirect_to students_path
      end
    else
      render edit_detail_path
    end
  end

end

private
def detail_params
  params.require(:detail).permit(:Name, :Dob, :Blood_group,:Fathers_name, :Parent_address, :Phone_number,:Achievement, :student_id)
end