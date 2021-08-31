class ModelsBackofficeController < ApplicationController
    before_action :authenticate_model!

    layout "models_backoffice"
end
