class DoctorsController < ApplicationController
	before_action :authenticate_user!

	def index 
		@appointment = Appointment.all
		@doctor= Doctor.where(:start_time => "10:00", :end_time => "13:00")
		@doc = Doctor.where(:start_time => "15:00", :end_time => "19:00")
	end

	def new
		@wek = Wek.all
		@doctor = Doctor.new
	end

	def show 
	end

	def create
		@wek = Wek.all
		@doctor = Doctor.new(doctor_params.merge(user_id: current_user))
    respond_to do |format|
      if @doctor.save
        format.html { redirect_to @doctor, notice: 'slot was successfully created.' }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
	end

	def reject
		 @ap = Appointment.where(:id => params[:id] ,:is_select => params[:appointment]).update(:is_select => true)
   		 redirect_to doctors_path
	end
	def accept
		@ap = Appointment.where(:id => params[:id] ,:is_select => params[:appointment]).update(:is_select => false)
		redirect_to doctors_path
	end

	def doctor_params
		params.require(:doctor).permit(:start_time, :end_time,:user_id,:not_available,:wek_id,:name)
	end
end
