# NOTE: Custom error pages can be added by adding a template with the status code as the name: `views/errors/404.html.haml`
class ErrorsController < ApplicationController

  def show
    code = params[:code] || 500
    message = Rack::Utils::HTTP_STATUS_CODES[code]
    template = lookup_context.exists?(code, ["errors"]) ? code.to_s : :show

    render template, code: code, message: message
  end

end
