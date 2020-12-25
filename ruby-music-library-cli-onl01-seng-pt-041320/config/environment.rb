require 'bundler'
Bundler.require

module Concerns
    module Findable
        def find_by_name(name)
            self.all.find {|song| song.name == name}
        end

        def find_or_create_by_name(name)
            find_by_name(name) || self.create(name)
        end
    end
end

require_all 'lib'