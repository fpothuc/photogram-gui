class UsersController < ApplicationController
  def users
    render(:template => "user_templates/index")
  end
end
