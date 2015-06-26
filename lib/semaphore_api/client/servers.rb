module SemaphoreApi
  class Client
    module Servers

      def servers(project_hash_id)
        get "/projects/#{project_hash_id}/servers"
      end

      def server_status(project_hash_id, server_id)
        get "/projects/#{project_hash_id}/servers/#{server_id}/status"
      end

      def server_history(project_hash_id, server_id)
        get "/projects/#{project_hash_id}/servers/#{server_id}"
      end

    end
  end
end
