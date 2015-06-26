module SemaphoreApi
  class Client
    module Projects

      def projects
        get "/projects"
      end

    end
  end
end
