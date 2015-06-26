module SemaphoreApi
  class Client
    module WebHooks

      def webhooks(project_hash_id)
        get "/projects/#{project_hash_id}/hooks"
      end

    end
  end
end
