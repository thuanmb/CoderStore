class VisitorsController < ApplicationController
  def index
    @products = Product.sort(params[:sort])
  end
end
