module DockerCloud
  class RegistryAPI < DockerCloud::BaseAPI
    TYPE = 'Registry'

    def resource_url(host = '')
      "/registry/#{host}"
    end

    def all(params = {})
      response = http_get(resource_url, params)
      format_object(response)
    end

    def get(host)
      response = http_get(resource_url(host))
      format_object(response)
    end
  end
end