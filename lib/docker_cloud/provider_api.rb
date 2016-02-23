module DockerCloud
  class ProviderAPI < DockerCloud::BaseAPI
    def list_url(name = '')
      "/api/infra/#{DockerCloud::DOCKER_CLOUD_API_VERSION}/provider/#{name}"
    end

    def all(params={})
      http_get(list_url, params)
    end

    def get_by_name(name)
      http_get(list_url(name))
    end
  end
end