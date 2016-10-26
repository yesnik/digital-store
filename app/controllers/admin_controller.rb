class AdminController < ApplicationController
  layout 'admin'

  def users_count
    @users_count = User.count
  end
end
