class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to new_consultation_path(@consultation)
    else
      render :new
    end
  end

  def edit
    @patients = Patient.all
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)

    redirect_to patient_path(@patient)
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :social_security_number)
  end
end
