class UsersController < ApplicationController
  def login_form
    render 'login_form'
  end

  def login
    @user = User.find_by(
      name: params[:name],
      password: params[:password]
    )
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/export/form/#{@user.id}")
    else
      flash[:notice] = "ユーザーネームかパスワードが間違っています。"
      render 'login_form'
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'ログアウトしました'
    redirect_to("/")
  end

  def signup
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      faculty: params[:faculty],
      program: params[:school_program],
      grade: params[:grade],
      student_number: params[:school_number]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "サインアップしました"
      redirect_to("/")
    else
      flash[:notice] = @user.errors.full_messages
      render 'signup_form'
    end

  end

  def signup_form

  end

  def edit

  end

  def edit_profile
    user = User.find_by(email: current_user.email)
    user.name = params[:name]
    user.faculty = params[:faculty]
    user.school_program = params[:school_program]
    user.school_number = params[:school_number]
    user.save
  end

end
