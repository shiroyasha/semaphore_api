require "zoid"

require "semaphore_api/client/projects"
require "semaphore_api/client/branches"
require "semaphore_api/client/webhooks"

module SemaphoreApi
  class Client
    include SemaphoreApi::Client::Projects
    include SemaphoreApi::Client::Branches
    include SemaphoreApi::Client::WebHooks

    def initialize(auth_token, end_point=nil)
      @auth_token = auth_token
      @end_point = end_point
    end

    def get(path, options = {})
      response = agent.get("/api/v1/#{path}", {:auth_token => @auth_token})

      response.body
    end

    def agent
      @agent ||= Zoid::Agent.new(end_point)
    end

    def end_point
      @end_point || "https://semaphoreci.com"
    end

    # hide auth_token
    def inspect
      super.gsub! @auth_token, "*******"
    end
  end
end
