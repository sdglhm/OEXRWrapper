module OEXRWrapper
  class Currency
    attr_accessor :name, :code

    def initialize(code, name)
      @code = code
      @name = name
    end
  end
end