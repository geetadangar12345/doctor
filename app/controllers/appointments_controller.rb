class AppointmentsController < ApplicationController
		before_action :authenticate_patient!

	def new
		@appointment = Appointment.new
	end

	def create
		@doc = params[:doctor_id]
		@wek = params[:wek_id]
		@peron = params[:person_name_id]
		@patient = current_patient.id
		@appointment = Appointment.new(:doctor_id => @doc, :wek_id => @wek,:person_name_id => @peron, :patient_id => @patient)
    respond_to do |format|
			if !Appointment.where(:doctor_id => @doc, :wek_id => @wek, :person_name_id => @peron).present?
	      if @appointment.save
	        format.html { redirect_to appointments_path, notice: 'appointment was successfully created.' }
	        format.json { render :show, status: :created, location: @appointment }
			end
	      else
	        format.html { render :new }
	        format.json { render json: appointments_path.errors, status: :unprocessable_entity }
	      end
    end
	end
	def destroy
		@appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path, notice: 'product delete successfully'
  end

	def index
		@appointment = Appointment.all
	end

end
