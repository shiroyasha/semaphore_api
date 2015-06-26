module SemaphoreApi
  class Client
    module Projects

      def branches(project_hash_id)
        get "/projects/#{project_hash_id}/branches"
      end

      def branch_status(project_hash_id, branch_id)
        get "/projects/#{project_hash_id}/#{branch_id}/status"
      end

      def branch_history(project_hash_id, branch_id)
        get "/projects/#{project_hash_id}/#{branch_id}"
      end

    end
  end
end
