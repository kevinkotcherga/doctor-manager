class PatientsController < ApplicationController
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

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :social_security_number)
  end
end
