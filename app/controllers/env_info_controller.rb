require 'json'

class EnvInfoController < ApplicationController
  def index
    @env_app = ENV["VCAP_APPLICATION"] ? JSON.pretty_generate(ENV["VCAP_APPLICATION"]) : "No PCF Environment Application Info Found"
    @env_services = ENV["VCAP_SERVICES"] ? JSON.pretty_generate(ENV["VCAP_SERVICES"]) : "No PCF Environment Service Info Found"
    render 'index'
  end
end
