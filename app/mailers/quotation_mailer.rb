class QuotationMailer < ApplicationMailer

  def notify_to_systemplas(quotation)
    @from    = quotation.email
    @to      = "elias.jcy@gmail.com"
    @quotation = quotation
    mail(from: @from, to: @to, subject: "#{quotation.subject}")
  end

  def notify_to_client(quotation)
    @from    = "elias.jcy@gmail.com"
    @to      = quotation.email
    @quotation = quotation
    mail(from: @from, to: @to, subject: "Copia consulta Systemplas")
  end

end
