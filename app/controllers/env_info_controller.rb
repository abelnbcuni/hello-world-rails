class EnvInfoController < ApplicationController
  def index
    @env_app = ENV["VCAP_APPLICATION"] ? ENV["VCAP_APPLICATION"].to_h : "No PCF Environment Application Info Found"
    @env_services = ENV["VCAP_SERVICES"] ? ENV["VCAP_SERVICES"].to_h : "No PCF Environment Service Info Found"
    render 'index'
  end
end
