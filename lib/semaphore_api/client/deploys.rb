module SemaphoreApi
  class Client
    module Deploys

      def deploy(project_hash_id, server_id, depoy_number)
        get "/projects/#{project_hash_id}/servers/#{server_id}/deploys/#{deploy_number}"
      end

      def deploy_log(project_hash_id, server_id, depoy_number)
        get "/projects/#{project_hash_id}/servers/#{server_id}/deploys/#{deploy_number}/log"
      end

    end
  end
end
