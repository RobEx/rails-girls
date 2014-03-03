class UsersController < ApplicationController
  before_filter :authenticate_user!

  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @ideas = Idea.all

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end

  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  @user = User.find(params[:id])    
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  protected

  def user_params
    params[:user].permit(:email, :password, :password_confirmation, :admin)
  end


end