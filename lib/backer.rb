class Backer
  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(new_project)
    backed_projects << new_project
    new_project.add_backer(self)
  end
end
