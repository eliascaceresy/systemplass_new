class Administration::QuotationsController < ApplicationController
  before_action :set_quotation,only:[:show]

  def index
    @quotations = Quotation.all.order(created_at: :asc)
    render layout: "administration"
  end

  def show
    render layout: "administration"
  end


  private

    def set_quotation
      @quotation = Quotation.find(params[:id])
    end

end
