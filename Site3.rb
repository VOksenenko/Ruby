class Site
  attr_reader :current_url
  @@path = []
  @current_path = ""
  HOME_URL = "https://www.home.com"

  def self.go_to(path)
    correct(path)
  end

  def self.correct(str)
    str.gsub(/\s/,'%20')
  end
  private_class_method :correct

  def initialize
    @current_url = HOME_URL.clone
    @@path << @current_url
  end

  def go_to(path)
    path = self.class.go_to(path)
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
   self.current_url  == other.current_url ? true : false
 end

 def !=(other)
   self.current_url  != other.current_url ? true : false
 end
  
end
