class Site
  attr_reader :current_url
  @@path = []
  @current_path = ""
  HOME_URL = "https://www.home.com"
  
  def initialize
    @current_url = HOME_URL.clone
    @@path << @current_url
  end

  def go_to(path)
    if @current_path != path
      @current_path = path
      @current_url = HOME_URL.clone << "/" << @current_path
      @@path << @current_url
    end
  end 

  def to_s
    history = @@path
"""*----------*
 home: #{HOME_URL}
 current url: #{@current_url}
 history: #{history}
*----------*"
  end

  def path
    @@path.find_index(@current_url)
  end

 def >(other)
   self.path  > other.path ? true : false
 end

 def <(other) 
   self.path  < other.path ? true : false
 end 

 def ==(other)
   self.path  == other.path ? true : false
 end

 def !=(other)
   self.path  != other.path ? true : false
 end
  
end
