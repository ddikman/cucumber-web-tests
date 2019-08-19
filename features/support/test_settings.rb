require 'singleton'

class TestSettings
    include Singleton

    def password
        return get_environment_setting('TEST_PASSWORD')
    end

    def username
        return get_environment_setting('TEST_USERNAME')
    end

    def host_url
        return get_environment_setting('TEST_HOST_URL')
    end

    def validate()
        password()
        username()
        host_url()
    end

    private
    def get_environment_setting(name)
        value = ENV[name]
        if value.nil?
            raise "Expected environment setting is missing: #{name}"
        end
        return value
    end
end