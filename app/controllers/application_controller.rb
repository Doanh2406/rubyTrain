class ApplicationController < ActionController::Base
  before_action :set_locale
  def set_locale
    if params[:locale] 
      if I18n.available_locales.include?(params[:locale].to_sym)
          I18n.locale = params[:locale] 
      else
          flash.now[:notice] = params[:locale] + ' is not supported'              
      end
  end
  end

  # def set_locale
  #   locale = params[:locale].to_s.strip.to_sym
  #   I18n.locale = I18n.available_locales.include?(locale) ?
  #     locale : I18n.default_locale
  # end
  

  # def locale_from_header
  #   request.env.fetch('HTTP_ACCEPT_LANGUAGE','').scan(/[a-z]{2}/).first
  # end
end
