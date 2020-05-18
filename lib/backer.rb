require 'pry'

class Backer
    attr_accessor :backed_projects, :project
    attr_reader :name

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    
    def back_project(project)
        #binding.pry
        backed_projects << project #let's use the method rather than the instance variable
        project.backers << self #we start an infinite loop here if you leverage the add_baker. try simply shoveling the current backer (self) into the project.bakers
        end
    



end