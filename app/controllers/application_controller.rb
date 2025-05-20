class ApplicationController < ActionController::Base
  skip_forgery_protection

  def homepage
    render({ :template => "layouts/application" })
  end
end
