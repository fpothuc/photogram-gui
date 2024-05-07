class PhotosController < ApplicationController
  def photos
    render(:template => "photo_templates/index")
  end
end
