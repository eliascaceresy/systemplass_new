class Administration::QuotationsController < AdminController
  before_action :set_quotation,only:[:show]

  def index
    @quotations = Quotation.all.order(created_at: :desc).page params[:page]
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
