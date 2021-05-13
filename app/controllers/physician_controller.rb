class PhysicianController < ApplicationController
  def index
    @physician = Physician.all
    @appointment = Appointment.all
    @patient = Patient.all
  end
              
  def show
    @physician = Physician.find(params[:id])
  end
              
  def new
    @physician = Physician.new 
  end
              
  def create
    @physician= Physician.new(physician_params)
    if @physician.save 
      redirect_to @physician
    else
      render('new')
    end        
  end

  def create_appointment
    @physician = Physician.find(physician_id_params)
    if @physician.appointments.create(appointment_params)
        render('edit')
    else
        render('show')
    end
  end
  
  def create_patient
    Patient.create(patient_create_params)
  end
              
  def edit
    @physician = Physician.find(params[:id])
  end
  def update
    @physician = Physician.find(params[:id])

    if @physician.update(physician_params)
        redirect_to(physician_index_path)
    else
        render('edit')
    end
 end
              
  def delete
    @physician = Physician.find(params[:id])
  end
  def destroy
    @physician = Physician.find(params[:id])
    @physician.destroy
    redirect_to(physician_index_path)
  end
          
  private
  def physician_params
    params.required(:physician).permit(:name)
  end
  def appointment_params
    params.require(:appointment).permit(:patient_id,:appointment_date)
  end
  def physician_id_params
    params.required(:physician_id)
  end
  def patient_create_params
    params.require(:patient).permit(:name)
  end  

end
