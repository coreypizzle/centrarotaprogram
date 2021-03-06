class UsersController < ApplicationController
#  before_filter :authenticate_user! 
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.order(:order)
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def update_collection
    @users = User.find(params[:user_ids])
    @users.each do |user|
      if collect_params[:password].blank?
        collect_params.delete(:password)
        collect_params.delete(:password_confirmation)
      end
      user.update_attributes!(params[:user])
    

      #respond_to do |format|
        #if user.update(collect_params)
          #format.html { redirect_to user, notice: 'User was successfully updated.' }
          #format.json { render :show, status: :ok, location: user }
       # else
          #format.html { render :edit }
         # format.json { render json: user.errors, status: :unprocessable_entity }
        #end
      #end
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if user_params[:password].blank?
      user_params.delete(:password)
      user_params.delete(:password_confirmation)
    end

    successfully_updated = if needs_password?(@user, user_params)
                           @user.update(user_params)
                         else
                           @user.update_without_password(user_params)
                         end
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected

    def needs_password?(user, params)
      params[:password].present?
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def collect_params
      params.require(:user).permit(:role_id, :username, :password, :password_confirmation, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :mondayap, :tuesdayap, :wednesdayap, :thursdayap, :fridayap, :saturdayap, :sundayap, :monday02, :tuesday02, :wednesday02, :thursday02, :friday02, :saturday02, :sunday02, :monday03, :tuesday03, :wednesday03, :thursday03, :friday03, :saturday03, :sunday03, :monday04, :tuesday04, :wednesday04, :thursday04, :friday04, :saturday04, :sunday04, :mondayap02, :tuesdayap02, :wednesdayap02, :thursdayap02, :fridayap02, :saturdayap02, :sundayap02, :mondayap03, :tuesdayap03, :wednesdayap03, :thursdayap03, :fridayap03, :saturdayap03, :sundayap03, :mondayap04, :tuesdayap04, :wednesdayap04, :thursdayap04, :fridayap04, :saturdayap04, :sundayap04, :order)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_ids, :role_id, :username, :password, :password_confirmation, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :mondayap, :tuesdayap, :wednesdayap, :thursdayap, :fridayap, :saturdayap, :sundayap, :monday02, :tuesday02, :wednesday02, :thursday02, :friday02, :saturday02, :sunday02, :monday03, :tuesday03, :wednesday03, :thursday03, :friday03, :saturday03, :sunday03, :monday04, :tuesday04, :wednesday04, :thursday04, :friday04, :saturday04, :sunday04, :mondayap02, :tuesdayap02, :wednesdayap02, :thursdayap02, :fridayap02, :saturdayap02, :sundayap02, :mondayap03, :tuesdayap03, :wednesdayap03, :thursdayap03, :fridayap03, :saturdayap03, :sundayap03, :mondayap04, :tuesdayap04, :wednesdayap04, :thursdayap04, :fridayap04, :saturdayap04, :sundayap04, :order)
    end



end
