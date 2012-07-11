# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module CEF
  extend FFI::Library
  ffi_lib 'cef'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # Parse the specified |url| into its component parts. Returns false (0) if the
  # URL is NULL or invalid.
  # 
  # @method parse_url(url, parts)
  # @param [FFI::Pointer(*String)] url 
  # @param [FFI::Pointer(*Urlparts)] parts 
  # @return [Integer] 
  # @scope class
  attach_function :parse_url, :cef_parse_url, [:pointer, :pointer], :int
  
  # Creates a URL from the specified |parts|, which must contain a non-NULL spec
  # or a non-NULL host and path (at a minimum), but not both. Returns false (0)
  # if |parts| isn't initialized as described.
  # 
  # @method create_url(parts, url)
  # @param [FFI::Pointer(*Urlparts)] parts 
  # @param [FFI::Pointer(*String)] url 
  # @return [Integer] 
  # @scope class
  attach_function :create_url, :cef_create_url, [:pointer, :pointer], :int
  
end
