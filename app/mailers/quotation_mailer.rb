class QuotationMailer < ApplicationMailer

  def notify_to_systemplas(quotation)
    @from    = quotation.email
    @to      = "ventas@systemplas.cl"
    @quotation = quotation
    mail(from: @from, to: @to, subject: "#{quotation.subject}")
  end

  def notify_to_client(quotation)
    @from    = "ventas@systemplas.cl"
    @to      = quotation.email
    @quotation = quotation
    mail(from: @from, to: @to, subject: "Copia consulta Systemplas")
  end

end
