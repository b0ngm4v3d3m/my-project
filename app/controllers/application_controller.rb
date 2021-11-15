class ApplicationController < ActionController::Base
  include SessionsHelper
  def hello
    render html:"Hello word"
  end


end
