module SatelicomPtv
  class IdManager
    def initialize
      @uuid_list = []
    end

    def add(uuid)
      @uuid_list << uuid
      @uuid_list.size
    end

    def uuid(id)
      @uuid_list[id - 1]
    end

  end
end