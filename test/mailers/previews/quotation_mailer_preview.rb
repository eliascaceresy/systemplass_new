# Preview all emails at http://localhost:3000/rails/mailers/quotation_mailer
class QuotationMailerPreview < ActionMailer::Preview

  def notify_to_systemplas
    QuotationMailer.notify_to_systemplas(Quotation.first)
  end

  def notify_to_client
    QuotationMailer.notify_to_client(Quotation.first)
  end

end
