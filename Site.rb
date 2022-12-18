class Site
  attr_reader :current_url
  HOME_URL = "https://www.home.com"
  @current_path = ""
  
  def initialize
    @current_url = HOME_URL
  end

  def go_to(path)
    if @current_path != path
      @current_path = path
      @current_url = HOME_URL.clone << "/" << @current_path
    end
  end

  def to_s
"""*----------*
 home: #{HOME_URL}
 current url: #{@current_url}
*----------*"""
  end
end
