require 'pry'
module Findable
    module ClassMethods
        def find_by_name(name)
            self.all.detect{|a| a.name == name}
            # Artist.all.detect{|a| a.name == name} || Song.all.detect{|a| a.name == name}
        end
    end
end