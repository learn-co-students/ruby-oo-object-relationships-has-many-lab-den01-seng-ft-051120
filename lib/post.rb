class Post
  attr_accessor :title
  attr_reader :author
  @@all = []

  def initialize title, author = nil
    @title = title
    @author = author
    @@all << self
  end

  def author= name
    name.add_post self
  end


  def add_author author
    @author = author
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      return nil
    else
      return @author.name
    end
  end
end