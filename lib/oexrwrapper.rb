# frozen_string_literal: true

require_relative "oexrwrapper/version"

module OEXRWrapper
  autoload :Client, "oexrwrapper/client"
  autoload :Resource, "oexrwrapper/resource"
  autoload :Object, "oexrwrapper/object"
  autoload :Error, "oexrwrapper/error"


  # Resources
  autoload :LatestResource, "oexrwrapper/resources/latest"

  #  Classes
  autoload :Latest, "oexrwrapper/objects/latest"
end
