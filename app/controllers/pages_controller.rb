class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
     @title = "Contact"
  end
  
  def about
     @title = "About"
  end
  
  def help
    @title = "Help"
  end
  
  def test
    @doc_data = params[:doc_data]
    @autograf = params[:autograf]
    puts "doc_data: #{@doc_data} -- autograf: #{@autograf}"
    render json: @doc_data, :layout => false
  end
end
