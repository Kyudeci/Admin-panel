class PagesController < ApplicationController
  def home
    @user = User.new
    def create
      User.create(email: params[:email],username: params[:username],password: params[:password])
      redirect_to '/'
    end
  end

  def main
  end

  def courses
    @courses = Course.all

    def create
      Course.create(name: params[:name],hours: params[:hours])
      redirect_to '/courses'
    end
  end

  def database
    @students = Student.all
    @instructors = Instructor.all
    def create
      Student.create(first_name: params[:first_name],last_name: params[:last_name],age: params[:age],education: params[:education])
      redirect_to '/database'
    end
  end
  def cohorts
  @cohorts = Cohort.all
  @course = Course.all
    def create
      Cohort.create(name: params[:name],start_date: params[:start_date],end_date: params[:end_date])
      redirect_to '/cohorts'
    end
  end
end
# if (Date.valid_date?(params[:start_date]) &&  )
# Course.create(start_date: Date.strptime(params[:start_date], '%m/%d/%Y'), end)
