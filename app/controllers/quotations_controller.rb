class QuotationsController < ApplicationController
  def create
    @quotation = Quotation.new(quotation_params)

    respond_to do |format|
      if @quotation.save && QuotationMailer.notify_to_systemplas(@quotation).deliver_now && QuotationMailer.notify_to_client(@quotation).deliver_now
        format.html { redirect_to contact_path, notice: 'Su consulta se ha enviado exitosamente!! Le responderemos a la brevedad.' }
        format.json { render :show, status: :created, location: @quotation }
      else
        format.html { redirect_to contact_path, alert: 'Hubo un error el enviar el Email!! Reintenta nuevamente.' }
        format.json { render json: @quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def quotation_params
      params.require(:quotation).permit(:name, :email, :subject, :message)
    end
end
