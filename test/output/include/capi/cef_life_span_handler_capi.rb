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
  
  # (Not documented)
  class Browser < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class Client < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class Browser < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class Browser < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class Browser < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class Browser < FFI::Struct
    layout :dummy, :char
  end
  
  # Implement this structure to handle events related to browser life span. The
  # functions of this structure will be called on the UI thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :on_before_popup ::
  #   (FFI::Pointer(*)) Called before a new popup window is created. The |parentBrowser| parameter
  #   will point to the parent browser window. The |popupFeatures| parameter will
  #   contain information about the style of popup window requested. Return false
  #   (0) to have the framework create the new popup window based on the
  #   parameters in |windowInfo|. Return true (1) to cancel creation of the popup
  #   window. By default, a newly created popup window will have the same client
  #   and settings as the parent window. To change the client for the new window
  #   modify the object that |client| points to. To change the settings for the
  #   new window modify the |settings| structure.
  # :on_after_created ::
  #   (FFI::Pointer(*)) Called after a new window is created.
  # :run_modal ::
  #   (FFI::Pointer(*)) Called when a modal window is about to display and the modal loop should
  #   begin running. Return false (0) to use the default modal loop
  #   implementation or true (1) to use a custom implementation.
  # :do_close ::
  #   (FFI::Pointer(*)) Called when a window has recieved a request to close. Return false (0) to
  #   proceed with the window close or true (1) to cancel the window close. If
  #   this is a modal window and a custom modal loop implementation was provided
  #   in run_modal() this callback should be used to restore the opener window to
  #   a usable state.
  # :on_before_close ::
  #   (FFI::Pointer(*)) Called just before a window is closed. If this is a modal window and a
  #   custom modal loop implementation was provided in run_modal() this callback
  #   should be used to exit the custom modal loop.
  class LifeSpanHandler < FFI::Struct
    layout :base, :char,
           :on_before_popup, :pointer,
           :on_after_created, :pointer,
           :run_modal, :pointer,
           :do_close, :pointer,
           :on_before_close, :pointer
  end
  
end
