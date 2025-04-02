class ResponsesController < ApplicationController
  def new
    @form = Form.find(params[:id])
    @response = @form.responses.new
  end
  def create
      @response = Response.new(response_params)
      if @response.save
          redirect_to @response, notice: "Response submitted successfully"
      else
          render :new
      end
  end

    private
    def response_params
      params.require(:response).permit(:form_id, answers_attributes: [:question_id, :text])
    end
end
