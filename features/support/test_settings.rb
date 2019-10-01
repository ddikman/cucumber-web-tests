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

    def driver
        return get_environment_setting('TEST_DRIVER', 'web').downcase.to_sym
    end

    def validate()
        password()
        username()
        host_url()
        driver()
    end

    private
    def get_environment_setting(name, default = nil)
        value = ENV[name]
        if value.nil?
            if default.nil?
                raise "Expected environment setting is missing: #{name}"
            else
                value = default
            end
        end
        return value
    end
end