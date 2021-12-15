class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to consultations_path(@consultation)
    else
      render :new
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :speciality)
  end
end
