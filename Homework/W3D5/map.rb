class Map

    attr_accessor :my_map

    def initialize
        @my_map = []
    end

    def set(key, value)
        @my_map.push[key, value]
    end

    def get(key)
        @my_map.select do |pair|
            pair[0] == key
        end
    end

    def delete(key)
        @my_map.select do |pair|
            pair[0] != key
        end
    end

end