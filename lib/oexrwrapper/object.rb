require "ostruct"

module OEXRWrapper
  class Object < OpenStruct
    def initialize(attributes)
      super to_ostruct attributes
    end

    def to_ostruct(attributes)
      case attributes
      when Hash
        OpenStruct.new(attributes.transform_values { |val| to_ostruct(val) })
      when Array
        attributes.map { |o| to_ostruct(o) }
      else
        attributes
      end
    end
  end
end
