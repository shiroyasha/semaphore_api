module SemaphoreApi
  class Client
    module Builds

      def build(project_hash_id, branch_id, build_number)
        get "/projects/#{project_hash_id}/#{branch_id}/builds/#{build_number}"
      end

      def build_log(project_hash_id, branch_id, build_number)
        get "/projects/#{project_hash_id}/#{branch_id}/builds/#{build_number}/log"
      end

    end
  end
end
