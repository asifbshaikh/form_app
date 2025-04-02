class FormController < ApplicationController
  def index
    @form = Form.all
  end
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to @form, notice: "form created successfully"
    else
      render :new
    end
  end

  def show
    @form = Form.find(params[:id])
  end

 private

 def form_params
    params.require(:form).permit(:title, :description)
 end
end
