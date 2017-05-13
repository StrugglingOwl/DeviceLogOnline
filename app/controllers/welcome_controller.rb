class WelcomeController < ApplicationController
  def index
    flash[:notice] ="早！"
  end
end
