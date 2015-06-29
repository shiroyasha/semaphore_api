module SemaphoreApi
  class Client
    module Deploys

      def deploy(project_hash_id, server_id, depoy_number)
        get "/projects/#{project_hash_id}/servers/#{server_id}/deploys/#{deploy_number}"
      end

      def deploy_log(project_hash_id, server_id, depoy_number)
        get "/projects/#{project_hash_id}/servers/#{server_id}/deploys/#{deploy_number}/log"
      end

      def launch_deploy(project_hash_id, branch_id, build_number, server_id, depoy_number, options = {})
        post "/projects/#{project_hash_id}/#{branch_id}/builds/#{build_number}/deploy/#{server_id}", options
      end

      def stop_deploy(project_hash_id, branch_id, deploy_number, options = {})
        post "/projects/#{project_hash_id}/#{branch_id}/deploys/#{deploy_number}/stop", options
      end

    end
  end
end
