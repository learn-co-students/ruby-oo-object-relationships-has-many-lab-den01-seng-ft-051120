class Author
  attr_accessor :name, :posts
  @@all = []

  def initialize name
    @name = name
    @posts = []
    @@all << self
  end

  def add_post post
    @posts << post
    post.add_author self
  end

  def add_post_by_title title
    title = Post.new title
    title.add_author self
    @posts << title
  end

  def self.post_count
    @@all.reduce(0) do |post_count, author|
      post_count += author.posts.count
    end
  end

end