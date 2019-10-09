# frozen_string_literal: true

module GRCommons
  module AttachFunction
    def attach_function(name, *args)
      @ffi_methods ||= []
      @ffi_methods << name
      super(name, *args)
    end

    attr_reader :ffi_methods
  end
end
