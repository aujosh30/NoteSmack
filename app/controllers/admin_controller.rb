class AdminController < ApplicationController
  def index
    @Total_Users = User.count
  end
end
