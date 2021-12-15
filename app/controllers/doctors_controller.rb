class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to new_consultation_path(@consultation)
    else
      render :new
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(doctor_params)

    redirect_to doctor_path(@doctor)
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :speciality)
  end
end
