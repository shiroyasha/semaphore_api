module SemaphoreApi
  class Client
    module WebHooks

      def webhooks(project_hash_id, options = {})
        get "/projects/#{project_hash_id}/hooks"
      end

      def create_webhook(project_hash_id, options = {})
        post "/projects/#{project_hash_id}/hooks", options
      end

      def edit_webhook(project_hash_id, webhook_id, options = {})
        put "/projects/#{project_hash_id}/hooks/#{webhook_id}", options
      end

      def delete_webhook(project_hash_id, webhook_id, options = {})
        delete "/projects/#{project_hash_id}/hooks/#{webhook_id}", options
      end

    end
  end
end
