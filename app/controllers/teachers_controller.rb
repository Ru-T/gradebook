class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?
  before_action :no_access

  # GET /teachers
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers
  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher, notice: 'Teacher was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /teachers/1
  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: 'Teacher was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /teachers/1
  def destroy
    @teacher.destroy
    redirect_to teachers_url, notice: 'Teacher was successfully destroyed.'
  end

  def no_access
    redirect_to grades_path, notice: "You do not have access to this information." unless session[:user_type] == "Teacher"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def teacher_params
      params.require(:teacher).permit(:name, :email, :password)
    end
end
