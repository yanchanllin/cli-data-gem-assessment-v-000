class Libraries::Location
  attr_accessor :branch_name, :address, :phone

  @@all = []

  def initialize(branch_name=nil, address=nil, phone=nil)
    @branch_name = branch_name
    @address = address
    @phone = phone
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
     if id == 0 
       nil 
     else 
    self.all[id-1]      
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end
