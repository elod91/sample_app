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
    parsed_json = ActiveSupport::JSON.decode(@doc_data)
    # puts "doc_data: #{@doc_data} -- autograf: #{@autograf} -- parsed: #{parsed_json[:table]}"
    render @doc_data, :layout => false
  end
end
