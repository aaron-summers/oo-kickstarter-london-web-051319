require 'pry'
class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
      @name = name
      @backed_projects = Array.new
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
    #binding.pry
  end
end
