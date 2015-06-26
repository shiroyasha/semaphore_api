require "semaphore_api/client/projects"

module SemaphoreApi
  class Client
    include SemaphoreApi::Client::Projects

    def initialize(auth_token, end_point=nil)
      @auth_token = auth_token
      @end_point = end_point
    end

    def get(path, options = {})
      response = agent.get(path, {:auth_token => @auth_token})

      response.body
    end

    def agent
      @agent ||= Zoid::Agent.new(@end_point)
    end

    # mask auth_token
    def inspect
      super.gsub! @auth_token, "*******"
    end
  end
end
