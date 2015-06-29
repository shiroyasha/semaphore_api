require "zoid"

require "semaphore_api/client/projects"
require "semaphore_api/client/branches"
require "semaphore_api/client/webhooks"
require "semaphore_api/client/builds"
require "semaphore_api/client/servers"
require "semaphore_api/client/deploys"

module SemaphoreApi
  class Client
    include SemaphoreApi::Client::Projects
    include SemaphoreApi::Client::Branches
    include SemaphoreApi::Client::WebHooks
    include SemaphoreApi::Client::Builds
    include SemaphoreApi::Client::Servers
    include SemaphoreApi::Client::Deploys

    def initialize(auth_token, end_point=nil)
      @auth_token = auth_token
      @end_point = end_point
    end

    def get(path, options = {})
      response = agent.get("/api/v1/#{path}", options.merge(:auth_token => @auth_token))

      response.body
    end

    def post(path, options = {})
      response = agent.post("/api/v1/#{path}", options.merge(:auth_token => @auth_token))

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
