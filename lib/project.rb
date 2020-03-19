class Project
  attr_accessor :title, :backers

  @@all = []

  def initialize(title)
    @title = title
    @backers = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
