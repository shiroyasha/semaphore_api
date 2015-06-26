module SemaphoreApi
  class Client
    module Projects

      def projects
        get "/projects"
      end

      def project(project_hash_id)
        projects.find { |project| project.hash_id == project_hash_id }
      end

    end
  end
end
