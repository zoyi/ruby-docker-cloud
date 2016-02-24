module DockerCloud
  class RegionAPI < DockerCloud::BaseAPI
    TYPE = 'Region'

    def resource_url(provider_region = '')
      "/region/#{provider_region}"
    end

    # Lists all regions of all supported cloud providers.
    # Returns a list of Region objects
    def all(params = {})
      response = http_get(resource_url, params)
      format_object(response)
    end

    # Gets all the details of a specific region for a specific provider
    # Returns a Region object
    def get(provider_name, region_name)
      provider_region = "#{provider_name}/#{region_name}"
      response = http_get(resource_url(provider_region))
      format_object(response)
    end
  end
end