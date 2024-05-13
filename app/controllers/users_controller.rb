class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc})
    render(:template => "user_templates/index")
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({:username => url_username})

    @the_user = matching_usernames.first

    if @the_user == nil
      redirect_to("/404")
    else
      render(:template => "user_templates/show")
    end

  end

  def create
    input_username = params.fetch("query_username")

    a_new_user = User.new

    a_new_user.username = input_username

    a_new_user.save

    redirect_to("/users/" + a_new_user.username.to_s)
  end

  def update
    input_id = params.fetch("path_id")
    matching_user = User.where({:username => input_id})
    the_user = matching_user.at(0)

    new_username = params.fetch("query_username")

    the_user.username = new_username.to_s
    the_user.save

    redirect_to("/users/" + the_user.username.to_s)
  end
end
