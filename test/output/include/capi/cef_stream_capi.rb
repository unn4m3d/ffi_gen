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
  
  # Structure the client can implement to provide a custom stream reader. The
  # functions of this structure may be called on any thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :read ::
  #   (FFI::Pointer(*)) Read raw binary data.
  # :seek ::
  #   (FFI::Pointer(*)) Seek to the specified offset position. |whence| may be any one of SEEK_CUR,
  #   SEEK_END or SEEK_SET. Return zero on success and non-zero on failure.
  # :tell ::
  #   (FFI::Pointer(*)) Return the current offset position.
  # :eof ::
  #   (FFI::Pointer(*)) Return non-zero if at end of file.
  class ReadHandler < FFI::Struct
    layout :base, :char,
           :read, :pointer,
           :seek, :pointer,
           :tell, :pointer,
           :eof, :pointer
  end
  
  # Structure used to read data from a stream. The functions of this structure
  # may be called on any thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :read ::
  #   (FFI::Pointer(*)) Read raw binary data.
  # :seek ::
  #   (FFI::Pointer(*)) Seek to the specified offset position. |whence| may be any one of SEEK_CUR,
  #   SEEK_END or SEEK_SET. Returns zero on success and non-zero on failure.
  # :tell ::
  #   (FFI::Pointer(*)) Return the current offset position.
  # :eof ::
  #   (FFI::Pointer(*)) Return non-zero if at end of file.
  class StreamReader < FFI::Struct
    layout :base, :char,
           :read, :pointer,
           :seek, :pointer,
           :tell, :pointer,
           :eof, :pointer
  end
  
  # Create a new cef_stream_reader_t object from a file.
  # 
  # @method stream_reader_create_for_file(file_name)
  # @param [FFI::Pointer(*String)] file_name 
  # @return [StreamReader] 
  # @scope class
  attach_function :stream_reader_create_for_file, :cef_stream_reader_create_for_file, [:pointer], StreamReader
  
  # Create a new cef_stream_reader_t object from data.
  # 
  # @method stream_reader_create_for_data(data, size)
  # @param [FFI::Pointer(*Void)] data 
  # @param [Integer] size 
  # @return [StreamReader] 
  # @scope class
  attach_function :stream_reader_create_for_data, :cef_stream_reader_create_for_data, [:pointer, :ulong], StreamReader
  
  # Create a new cef_stream_reader_t object from a custom handler.
  # 
  # @method stream_reader_create_for_handler(handler)
  # @param [ReadHandler] handler 
  # @return [StreamReader] 
  # @scope class
  attach_function :stream_reader_create_for_handler, :cef_stream_reader_create_for_handler, [ReadHandler], StreamReader
  
  # Structure the client can implement to provide a custom stream writer. The
  # functions of this structure may be called on any thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :write ::
  #   (FFI::Pointer(*)) Write raw binary data.
  # :seek ::
  #   (FFI::Pointer(*)) Seek to the specified offset position. |whence| may be any one of SEEK_CUR,
  #   SEEK_END or SEEK_SET. Return zero on success and non-zero on failure.
  # :tell ::
  #   (FFI::Pointer(*)) Return the current offset position.
  # :flush ::
  #   (FFI::Pointer(*)) Flush the stream.
  class WriteHandler < FFI::Struct
    layout :base, :char,
           :write, :pointer,
           :seek, :pointer,
           :tell, :pointer,
           :flush, :pointer
  end
  
  # Structure used to write data to a stream. The functions of this structure may
  # be called on any thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :write ::
  #   (FFI::Pointer(*)) Write raw binary data.
  # :seek ::
  #   (FFI::Pointer(*)) Seek to the specified offset position. |whence| may be any one of SEEK_CUR,
  #   SEEK_END or SEEK_SET. Returns zero on success and non-zero on failure.
  # :tell ::
  #   (FFI::Pointer(*)) Return the current offset position.
  # :flush ::
  #   (FFI::Pointer(*)) Flush the stream.
  class StreamWriter < FFI::Struct
    layout :base, :char,
           :write, :pointer,
           :seek, :pointer,
           :tell, :pointer,
           :flush, :pointer
  end
  
  # Create a new cef_stream_writer_t object for a file.
  # 
  # @method stream_writer_create_for_file(file_name)
  # @param [FFI::Pointer(*String)] file_name 
  # @return [StreamWriter] 
  # @scope class
  attach_function :stream_writer_create_for_file, :cef_stream_writer_create_for_file, [:pointer], StreamWriter
  
  # Create a new cef_stream_writer_t object for a custom handler.
  # 
  # @method stream_writer_create_for_handler(handler)
  # @param [WriteHandler] handler 
  # @return [StreamWriter] 
  # @scope class
  attach_function :stream_writer_create_for_handler, :cef_stream_writer_create_for_handler, [WriteHandler], StreamWriter
  
end
