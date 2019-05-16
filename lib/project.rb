class Project
  attr_reader :title
  attr_accessor :backers
  def initialize(project_title)
      @title = project_title
      @backers = Array.new
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end
