class PagesController < ApplicationController
  def home
    @user = User.new
    def create
      User.create(first_name: params[:first_name],last_name: params[:last_name],date_of_birth: params[:date_of_birth],email: params[:email],username: params[:username],password: params[:password])
      redirect_to '/'
    end
  end



  def about
  end

  def contact
  end
end
# if (Date.valid_date?(params[:start_date]) &&  )
# Course.create(start_date: Date.strptime(params[:start_date], '%m/%d/%Y'), end)
