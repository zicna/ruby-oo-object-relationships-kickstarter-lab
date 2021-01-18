require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        all_backed_projects = []
        ProjectBacker.all.each do |project|
            #binding.pry
            if project.backer == self
                all_backed_projects << project.project
            end
        end
        all_backed_projects
    end



end