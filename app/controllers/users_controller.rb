#-*- coding:utf-8 -*-

$KCODE = "UTF-8"
class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(:username => params[:username])
  end
end
