module DockerCloud
  class Container < DockerCloud::Type
    include DockerCloud::Helpers::Services

    def resource_uri
      info[:resource_uri]
    end

    def image_name
      info[:image_name]
    end

    def bindings
      info[:bindings]
    end

    def name
      info[:name]
    end

    # def service; info[:service]; end
    def service
      @service ||= client.services.get_from_uri(info[:service]) unless info[:service].nil?
    end

    def public_dns
      info[:public_dns]
    end

    def state
      info[:state]
    end

    def synchronized
      info[:state]
    end

    def exit_code
      info[:exit_code]
    end

    def exit_code_msg
      info[:exit_code_msg]
    end

    def deployed_date
      info[:deployed_datetime]
    end

    def started_date
      info[:started_datetime]
    end

    def stopped_date
      info[:stopped_datetime]
    end

    def destroyed_date
      info[:destroyed_datetime]
    end

    def env_vars
      info[:container_envvars]
    end

    def labels
      info[:labels]
    end

    def working_dir
      info[:working_dir]
    end

    def user
      info[:user]
    end

    def host_name
      info[:hostname]
    end

    def domain_name
      info[:domainname]
    end

    def mac_address
      info[:mac_address]
    end

    def cgroup_name
      info[:cgroup_name]
    end

    def tty
      info[:tty]
    end

    def stdin_open
      info[:stdin_open]
    end

    def dns
      info[:dns]
    end

    def dns_search
      info[:dns_search]
    end

    def cap_add
      info[:cap_add]
    end

    def cap_drop
      info[:cap_drop]
    end

    def devices
      info[:devices]
    end

    def extra_hosts
      info[:extra_hosts]
    end

    def security_opt
      info[:security_opt]
    end

    def entry_point
      info[:entrypoint]
    end

    def run_command
      info[:run_command]
    end

    def cpu_shares
      info[:cpu_shares]
    end

    def cpuset
      info[:cpuset]
    end

    def memory
      info[:memory]
    end

    def memory_swap
      info[:memory_swap]
    end

    def last_metric
      info[:last_metric]
    end

    def autorestart
      info[:autorestart]
    end

    def autodestroy
      info[:autodestroy]
    end

    def linked_to_container
      info[:linked_to_container]
    end

    def link_variables
      info[:link_variables]
    end

    def read_only
      info[:read_only]
    end

    def private_ip
      info[:private_ip]
    end

    def net
      info[:net]
    end

    def pid
      info[:pid]
    end

    def node
      @node ||= client.nodes.get_from_uri(info[:node]) unless info[:node].nil?
    end

    private

    def api
      client.containers
    end
  end
end
