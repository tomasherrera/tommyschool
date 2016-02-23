module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :id_document]
    devise_parameter_sanitizer.for(:account_update) << [:name, :id_document]
  end

end

DeviseController.send :include, DevisePermittedParameters
