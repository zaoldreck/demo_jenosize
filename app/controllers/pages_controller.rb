class PagesController < FrontController
  def show
    render params[:id]
  end
end
