class ConsultationsController < ApplicationController
  def index
    @consultations = Consultation.all
  end

  def show
    @consultation = Consultation.find(params[:id])
  end

  def new
    @consultation = Consultation.new
    @doctors = Doctor.all
    @patients = Patient.all
  end

  def create
    @consultation = Consultation.new(consultation_params)
    if @consultation.save
      redirect_to consultations_path(@consultation)
    else
      render :new
    end
  end

  private

  def consultation_params
    params.require(:consultation).permit(:name, :doctor_id, :patient_id)
  end
end
