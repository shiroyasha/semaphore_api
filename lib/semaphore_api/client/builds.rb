module SemaphoreApi
  class Client
    module Builds

      def build(project_hash_id, branch_id, build_number)
        get "/projects/#{project_hash_id}/#{branch_id}/builds/#{build_number}"
      end

      def build_log(project_hash_id, branch_id, build_number)
        get "/projects/#{project_hash_id}/#{branch_id}/builds/#{build_number}/log"
      end

      def launch_build(project_hash_id, branch_id, options = {})
        post "/projects/#{project_hash_id}/#{branch_id}/build"
      end

      def stop_build(project_hash_id, branch_id, build_number, options = {})
        post "/projects/#{project_hash_id}/#{branch_id}/builds/#{build_number}/stop"
      end

    end
  end
end
