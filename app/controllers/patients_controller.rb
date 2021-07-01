class PatientsController < ApplicationController
	before_action :authenticate_patient!

	def new
		if params[:doctor_select].present?
			redirect_to "search"
		end
		@doc_id = [:doc_id]
	end

	def index
		@doctor = Doctor.all
	end

	def search
		 @product = appointments.build(:doctor_id => params[:person_name].values.map(&:to_i), :wek_id => params[:wek].values.map(&:to_i), :person_name_id =>  params[:person_name].values.map(&:to_i))
		@person = params[:person_name].values.map(&:to_i)
		@doc = params[:select_doc].values.map
		@wek = params[:wek].values.map(&:to_i)
			@appointment = Appointment.create(:doctor_id => @doc, :wek_id => @wek, :person_name_id => @person)
			if @appointment.save
			@doctor_select = params[:doctor_select].values
			@docto_select =Doctor.find(@doctor_select)
	end

	end
	def appointment_params
		params.require(:appointment).permit(:doctor_id, :wek_id,:people_id)
	end
	def show
		redirect_to root_path
	end
end
