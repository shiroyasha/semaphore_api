module SemaphoreApi
  class Client
    module WebHooks

      def webhooks(project_hash_id, options = {})
        get "/projects/#{project_hash_id}/hooks"
      end

      def create_webhook(project_hash_id, options = {})
        post "/projects/#{project_hash_id}/hooks", options
      end

    end
  end
end
