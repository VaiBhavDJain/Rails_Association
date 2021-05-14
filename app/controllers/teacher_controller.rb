class TeacherController < ApplicationController\
    # The has_and_belongs_to_many Association Example

  def index
    @teacher = Teacher.all
    @student = Student.all
  end
          
  def show
    @teacher = Teacher.find(params[:id])
  end
          
  def new
    @teacher = Teacher.new
  end
          
  def create
    @teacher= Teacher.new(teacher_params)
    if @teacher.save 
      redirect_to @teacher
    else
      render('new')
    end        
  end
      
  def create_student
    @teacher = Teacher.find(teacher_id_params)
    if @teacher.students.create(student_create_params) 
      redirect_to @teacher
    else
      render('new')
    end
  end
          
  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id]) 
    if @teacher.update(teacher_params)
      redirect_to(teacher_index_path)
    else
      render('edit')
    end
  end
          
  def delete
    @teacher = Teacher.find(params[:id])
  end
  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to(teacher_index_path)
  end
      
  private
  def teacher_params
    params.required(:teacher).permit(:name,:age)
  end 
  def teacher_id_params
    params.require(:teacher_id)
  end 
  def student_create_params
    params.require(:student).permit(:name,:age,:roll_no)
  end   
end
