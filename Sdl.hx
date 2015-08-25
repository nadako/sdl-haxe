import cpp.ConstCharStar;
import cpp.RawPointer;
import cpp.Float32;
import cpp.Int16;
import cpp.Int32;
import cpp.Int64;
import cpp.UInt8;
import cpp.UInt16;
import cpp.UInt32;

@:build(CModule.build())
@:include("SDL.h")
@:buildXml('
<target id="haxe">
    <lib name="../SDL2-2.0.3/lib/x86/SDL2.lib" />
</target>
<files id="haxe">
    <compilerflag value="-DINCLUDED_SDL_EventType" />
    <compilerflag value="-DSDL_MAIN_HANDLED" />
    <compilerflag value="-I../SDL2-2.0.3/include" />
</files>
')
extern class Sdl {
    var SDL_INIT_TIMER:UInt32;
    var SDL_INIT_AUDIO:UInt32;
    var SDL_INIT_VIDEO:UInt32;
    var SDL_INIT_JOYSTICK:UInt32;
    var SDL_INIT_HAPTIC:UInt32;
    var SDL_INIT_GAMECONTROLLER:UInt32;
    var SDL_INIT_EVENTS:UInt32;
    var SDL_INIT_EVERYTHING:UInt32;
    var SDL_INIT_NOPARACHUTE:UInt32;

    var SDL_WINDOWPOS_CENTERED:Int;
    var SDL_WINDOWPOS_UNDEFINED:Int;

    var SDL_WINDOW_FULLSCREEN:UInt32;
    var SDL_WINDOW_FULLSCREEN_DESKTOP:UInt32;
    var SDL_WINDOW_OPENGL:UInt32;
    var SDL_WINDOW_HIDDEN:UInt32;
    var SDL_WINDOW_BORDERLESS:UInt32;
    var SDL_WINDOW_RESIZABLE:UInt32;
    var SDL_WINDOW_MINIMIZED:UInt32;
    var SDL_WINDOW_MAXIMIZED:UInt32;
    var SDL_WINDOW_INPUT_GRABBED:UInt32;
    var SDL_WINDOW_ALLOW_HIGHDPI:UInt32;

    function SDL_Init(flags:UInt32):Int;
    function SDL_SetMainReady():Void;
    function SDL_Quit():Void;
    function SDL_CreateWindow(title:ConstCharStar, x:Int, y:Int, w:Int, h:Int, flags:UInt32):RawPointer<SDL_Window>;
    function SDL_CreateWindowAndRenderer(width:Int, height:Int, window_flags:UInt32, window:RawPointer<RawPointer<SDL_Window>>, renderer:RawPointer<RawPointer<SDL_Renderer>>):Int;
    function SDL_RenderPresent(renderer:RawPointer<SDL_Renderer>):Void;

    var SDL_FIRSTEVENT:UInt32;
    var SDL_QUIT:UInt32;
    var SDL_APP_TERMINATING:UInt32;
    var SDL_APP_LOWMEMORY:UInt32;
    var SDL_APP_WILLENTERBACKGROUND:UInt32;
    var SDL_APP_DIDENTERBACKGROUND:UInt32;
    var SDL_APP_WILLENTERFOREGROUND:UInt32;
    var SDL_APP_DIDENTERFOREGROUND:UInt32;
    var SDL_WINDOWEVENT:UInt32;
    var SDL_SYSWMEVENT:UInt32;
    var SDL_KEYDOWN:UInt32;
    var SDL_KEYUP:UInt32;
    var SDL_TEXTEDITING:UInt32;
    var SDL_TEXTINPUT:UInt32;
    var SDL_MOUSEMOTION:UInt32;
    var SDL_MOUSEBUTTONDOWN:UInt32;
    var SDL_MOUSEBUTTONUP:UInt32;
    var SDL_MOUSEWHEEL:UInt32;
    var SDL_JOYAXISMOTION:UInt32;
    var SDL_JOYBALLMOTION:UInt32;
    var SDL_JOYHATMOTION:UInt32;
    var SDL_JOYBUTTONDOWN:UInt32;
    var SDL_JOYBUTTONUP:UInt32;
    var SDL_JOYDEVICEADDED:UInt32;
    var SDL_JOYDEVICEREMOVED:UInt32;
    var SDL_CONTROLLERAXISMOTION:UInt32;
    var SDL_CONTROLLERBUTTONDOWN:UInt32;
    var SDL_CONTROLLERBUTTONUP:UInt32;
    var SDL_CONTROLLERDEVICEADDED:UInt32;
    var SDL_CONTROLLERDEVICEREMOVED:UInt32;
    var SDL_CONTROLLERDEVICEREMAPPED:UInt32;
    var SDL_FINGERDOWN:UInt32;
    var SDL_FINGERUP:UInt32;
    var SDL_FINGERMOTION:UInt32;
    var SDL_DOLLARGESTURE:UInt32;
    var SDL_DOLLARRECORD:UInt32;
    var SDL_MULTIGESTURE:UInt32;
    var SDL_CLIPBOARDUPDATE:UInt32;
    var SDL_DROPFILE:UInt32;
    var SDL_AUDIODEVICEADDED:UInt32;
    var SDL_AUDIODEVICEREMOVED:UInt32;
    var SDL_RENDER_TARGETS_RESET:UInt32;
    var SDL_RENDER_DEVICE_RESET:UInt32;
    var SDL_USEREVENT:UInt32;
    var SDL_LASTEVENT:UInt32;

    function SDL_PollEvent(event:RawPointer<SDL_Event>):Int;

    var SDLK_UNKNOWN:SDL_Keycode;
    var SDLK_RETURN:SDL_Keycode;
    var SDLK_ESCAPE:SDL_Keycode;
    var SDLK_BACKSPACE:SDL_Keycode;
    var SDLK_TAB:SDL_Keycode;
    var SDLK_SPACE:SDL_Keycode;
    var SDLK_EXCLAIM:SDL_Keycode;
    var SDLK_QUOTEDBL:SDL_Keycode;
    var SDLK_HASH:SDL_Keycode;
    var SDLK_PERCENT:SDL_Keycode;
    var SDLK_DOLLAR:SDL_Keycode;
    var SDLK_AMPERSAND:SDL_Keycode;
    var SDLK_QUOTE:SDL_Keycode;
    var SDLK_LEFTPAREN:SDL_Keycode;
    var SDLK_RIGHTPAREN:SDL_Keycode;
    var SDLK_ASTERISK:SDL_Keycode;
    var SDLK_PLUS:SDL_Keycode;
    var SDLK_COMMA:SDL_Keycode;
    var SDLK_MINUS:SDL_Keycode;
    var SDLK_PERIOD:SDL_Keycode;
    var SDLK_SLASH:SDL_Keycode;
    var SDLK_0:SDL_Keycode;
    var SDLK_1:SDL_Keycode;
    var SDLK_2:SDL_Keycode;
    var SDLK_3:SDL_Keycode;
    var SDLK_4:SDL_Keycode;
    var SDLK_5:SDL_Keycode;
    var SDLK_6:SDL_Keycode;
    var SDLK_7:SDL_Keycode;
    var SDLK_8:SDL_Keycode;
    var SDLK_9:SDL_Keycode;
    var SDLK_COLON:SDL_Keycode;
    var SDLK_SEMICOLON:SDL_Keycode;
    var SDLK_LESS:SDL_Keycode;
    var SDLK_EQUALS:SDL_Keycode;
    var SDLK_GREATER:SDL_Keycode;
    var SDLK_QUESTION:SDL_Keycode;
    var SDLK_AT:SDL_Keycode;
    var SDLK_LEFTBRACKET:SDL_Keycode;
    var SDLK_BACKSLASH:SDL_Keycode;
    var SDLK_RIGHTBRACKET:SDL_Keycode;
    var SDLK_CARET:SDL_Keycode;
    var SDLK_UNDERSCORE:SDL_Keycode;
    var SDLK_BACKQUOTE:SDL_Keycode;
    var SDLK_a:SDL_Keycode;
    var SDLK_b:SDL_Keycode;
    var SDLK_c:SDL_Keycode;
    var SDLK_d:SDL_Keycode;
    var SDLK_e:SDL_Keycode;
    var SDLK_f:SDL_Keycode;
    var SDLK_g:SDL_Keycode;
    var SDLK_h:SDL_Keycode;
    var SDLK_i:SDL_Keycode;
    var SDLK_j:SDL_Keycode;
    var SDLK_k:SDL_Keycode;
    var SDLK_l:SDL_Keycode;
    var SDLK_m:SDL_Keycode;
    var SDLK_n:SDL_Keycode;
    var SDLK_o:SDL_Keycode;
    var SDLK_p:SDL_Keycode;
    var SDLK_q:SDL_Keycode;
    var SDLK_r:SDL_Keycode;
    var SDLK_s:SDL_Keycode;
    var SDLK_t:SDL_Keycode;
    var SDLK_u:SDL_Keycode;
    var SDLK_v:SDL_Keycode;
    var SDLK_w:SDL_Keycode;
    var SDLK_x:SDL_Keycode;
    var SDLK_y:SDL_Keycode;
    var SDLK_z:SDL_Keycode;
    var SDLK_CAPSLOCK:SDL_Keycode;
    var SDLK_F1:SDL_Keycode;
    var SDLK_F2:SDL_Keycode;
    var SDLK_F3:SDL_Keycode;
    var SDLK_F4:SDL_Keycode;
    var SDLK_F5:SDL_Keycode;
    var SDLK_F6:SDL_Keycode;
    var SDLK_F7:SDL_Keycode;
    var SDLK_F8:SDL_Keycode;
    var SDLK_F9:SDL_Keycode;
    var SDLK_F10:SDL_Keycode;
    var SDLK_F11:SDL_Keycode;
    var SDLK_F12:SDL_Keycode;
    var SDLK_PRINTSCREEN:SDL_Keycode;
    var SDLK_SCROLLLOCK:SDL_Keycode;
    var SDLK_PAUSE:SDL_Keycode;
    var SDLK_INSERT:SDL_Keycode;
    var SDLK_HOME:SDL_Keycode;
    var SDLK_PAGEUP:SDL_Keycode;
    var SDLK_DELETE:SDL_Keycode;
    var SDLK_END:SDL_Keycode;
    var SDLK_PAGEDOWN:SDL_Keycode;
    var SDLK_RIGHT:SDL_Keycode;
    var SDLK_LEFT:SDL_Keycode;
    var SDLK_DOWN:SDL_Keycode;
    var SDLK_UP:SDL_Keycode;
    var SDLK_NUMLOCKCLEAR:SDL_Keycode;
    var SDLK_KP_DIVIDE:SDL_Keycode;
    var SDLK_KP_MULTIPLY:SDL_Keycode;
    var SDLK_KP_MINUS:SDL_Keycode;
    var SDLK_KP_PLUS:SDL_Keycode;
    var SDLK_KP_ENTER:SDL_Keycode;
    var SDLK_KP_1:SDL_Keycode;
    var SDLK_KP_2:SDL_Keycode;
    var SDLK_KP_3:SDL_Keycode;
    var SDLK_KP_4:SDL_Keycode;
    var SDLK_KP_5:SDL_Keycode;
    var SDLK_KP_6:SDL_Keycode;
    var SDLK_KP_7:SDL_Keycode;
    var SDLK_KP_8:SDL_Keycode;
    var SDLK_KP_9:SDL_Keycode;
    var SDLK_KP_0:SDL_Keycode;
    var SDLK_KP_PERIOD:SDL_Keycode;
    var SDLK_APPLICATION:SDL_Keycode;
    var SDLK_POWER:SDL_Keycode;
    var SDLK_KP_EQUALS:SDL_Keycode;
    var SDLK_F13:SDL_Keycode;
    var SDLK_F14:SDL_Keycode;
    var SDLK_F15:SDL_Keycode;
    var SDLK_F16:SDL_Keycode;
    var SDLK_F17:SDL_Keycode;
    var SDLK_F18:SDL_Keycode;
    var SDLK_F19:SDL_Keycode;
    var SDLK_F20:SDL_Keycode;
    var SDLK_F21:SDL_Keycode;
    var SDLK_F22:SDL_Keycode;
    var SDLK_F23:SDL_Keycode;
    var SDLK_F24:SDL_Keycode;
    var SDLK_EXECUTE:SDL_Keycode;
    var SDLK_HELP:SDL_Keycode;
    var SDLK_MENU:SDL_Keycode;
    var SDLK_SELECT:SDL_Keycode;
    var SDLK_STOP:SDL_Keycode;
    var SDLK_AGAIN:SDL_Keycode;
    var SDLK_UNDO:SDL_Keycode;
    var SDLK_CUT:SDL_Keycode;
    var SDLK_COPY:SDL_Keycode;
    var SDLK_PASTE:SDL_Keycode;
    var SDLK_FIND:SDL_Keycode;
    var SDLK_MUTE:SDL_Keycode;
    var SDLK_VOLUMEUP:SDL_Keycode;
    var SDLK_VOLUMEDOWN:SDL_Keycode;
    var SDLK_KP_COMMA:SDL_Keycode;
    var SDLK_KP_EQUALSAS400:SDL_Keycode;
    var SDLK_ALTERASE:SDL_Keycode;
    var SDLK_SYSREQ:SDL_Keycode;
    var SDLK_CANCEL:SDL_Keycode;
    var SDLK_CLEAR:SDL_Keycode;
    var SDLK_PRIOR:SDL_Keycode;
    var SDLK_RETURN2:SDL_Keycode;
    var SDLK_SEPARATOR:SDL_Keycode;
    var SDLK_OUT:SDL_Keycode;
    var SDLK_OPER:SDL_Keycode;
    var SDLK_CLEARAGAIN:SDL_Keycode;
    var SDLK_CRSEL:SDL_Keycode;
    var SDLK_EXSEL:SDL_Keycode;
    var SDLK_KP_00:SDL_Keycode;
    var SDLK_KP_000:SDL_Keycode;
    var SDLK_THOUSANDSSEPARATOR:SDL_Keycode;
    var SDLK_DECIMALSEPARATOR:SDL_Keycode;
    var SDLK_CURRENCYUNIT:SDL_Keycode;
    var SDLK_CURRENCYSUBUNIT:SDL_Keycode;
    var SDLK_KP_LEFTPAREN:SDL_Keycode;
    var SDLK_KP_RIGHTPAREN:SDL_Keycode;
    var SDLK_KP_LEFTBRACE:SDL_Keycode;
    var SDLK_KP_RIGHTBRACE:SDL_Keycode;
    var SDLK_KP_TAB:SDL_Keycode;
    var SDLK_KP_BACKSPACE:SDL_Keycode;
    var SDLK_KP_A:SDL_Keycode;
    var SDLK_KP_B:SDL_Keycode;
    var SDLK_KP_C:SDL_Keycode;
    var SDLK_KP_D:SDL_Keycode;
    var SDLK_KP_E:SDL_Keycode;
    var SDLK_KP_F:SDL_Keycode;
    var SDLK_KP_XOR:SDL_Keycode;
    var SDLK_KP_POWER:SDL_Keycode;
    var SDLK_KP_PERCENT:SDL_Keycode;
    var SDLK_KP_LESS:SDL_Keycode;
    var SDLK_KP_GREATER:SDL_Keycode;
    var SDLK_KP_AMPERSAND:SDL_Keycode;
    var SDLK_KP_DBLAMPERSAND:SDL_Keycode;
    var SDLK_KP_VERTICALBAR:SDL_Keycode;
    var SDLK_KP_DBLVERTICALBAR:SDL_Keycode;
    var SDLK_KP_COLON:SDL_Keycode;
    var SDLK_KP_HASH:SDL_Keycode;
    var SDLK_KP_SPACE:SDL_Keycode;
    var SDLK_KP_AT:SDL_Keycode;
    var SDLK_KP_EXCLAM:SDL_Keycode;
    var SDLK_KP_MEMSTORE:SDL_Keycode;
    var SDLK_KP_MEMRECALL:SDL_Keycode;
    var SDLK_KP_MEMCLEAR:SDL_Keycode;
    var SDLK_KP_MEMADD:SDL_Keycode;
    var SDLK_KP_MEMSUBTRACT:SDL_Keycode;
    var SDLK_KP_MEMMULTIPLY:SDL_Keycode;
    var SDLK_KP_MEMDIVIDE:SDL_Keycode;
    var SDLK_KP_PLUSMINUS:SDL_Keycode;
    var SDLK_KP_CLEAR:SDL_Keycode;
    var SDLK_KP_CLEARENTRY:SDL_Keycode;
    var SDLK_KP_BINARY:SDL_Keycode;
    var SDLK_KP_OCTAL:SDL_Keycode;
    var SDLK_KP_DECIMAL:SDL_Keycode;
    var SDLK_KP_HEXADECIMAL:SDL_Keycode;
    var SDLK_LCTRL:SDL_Keycode;
    var SDLK_LSHIFT:SDL_Keycode;
    var SDLK_LALT:SDL_Keycode;
    var SDLK_LGUI:SDL_Keycode;
    var SDLK_RCTRL:SDL_Keycode;
    var SDLK_RSHIFT:SDL_Keycode;
    var SDLK_RALT:SDL_Keycode;
    var SDLK_RGUI:SDL_Keycode;
    var SDLK_MODE:SDL_Keycode;
    var SDLK_AUDIONEXT:SDL_Keycode;
    var SDLK_AUDIOPREV:SDL_Keycode;
    var SDLK_AUDIOSTOP:SDL_Keycode;
    var SDLK_AUDIOPLAY:SDL_Keycode;
    var SDLK_AUDIOMUTE:SDL_Keycode;
    var SDLK_MEDIASELECT:SDL_Keycode;
    var SDLK_WWW:SDL_Keycode;
    var SDLK_MAIL:SDL_Keycode;
    var SDLK_CALCULATOR:SDL_Keycode;
    var SDLK_COMPUTER:SDL_Keycode;
    var SDLK_AC_SEARCH:SDL_Keycode;
    var SDLK_AC_HOME:SDL_Keycode;
    var SDLK_AC_BACK:SDL_Keycode;
    var SDLK_AC_FORWARD:SDL_Keycode;
    var SDLK_AC_STOP:SDL_Keycode;
    var SDLK_AC_REFRESH:SDL_Keycode;
    var SDLK_AC_BOOKMARKS:SDL_Keycode;
    var SDLK_BRIGHTNESSDOWN:SDL_Keycode;
    var SDLK_BRIGHTNESSUP:SDL_Keycode;
    var SDLK_DISPLAYSWITCH:SDL_Keycode;
    var SDLK_KBDILLUMTOGGLE:SDL_Keycode;
    var SDLK_KBDILLUMDOWN:SDL_Keycode;
    var SDLK_KBDILLUMUP:SDL_Keycode;
    var SDLK_EJECT:SDL_Keycode;
    var SDLK_SLEEP:SDL_Keycode;
}

@:native("SDL_Window")
extern class SDL_Window {}

@:native("SDL_Renderer")
extern class SDL_Renderer {}

typedef SDL_EventType = UInt32;

@:native("SDL_Event")
@:structAccess
extern class SDL_Event {
    var type:SDL_EventType;
    var common:SDL_CommonEvent;
    var window:SDL_WindowEvent;
    var key:SDL_KeyboardEvent;
    var edit:SDL_TextEditingEvent;
    var text:SDL_TextInputEvent;
    var motion:SDL_MouseMotionEvent;
    var button:SDL_MouseButtonEvent;
    var wheel:SDL_MouseWheelEvent;
    var jaxis:SDL_JoyAxisEvent;
    var jball:SDL_JoyBallEvent;
    var jhat:SDL_JoyHatEvent;
    var jbutton:SDL_JoyButtonEvent;
    var jdevice:SDL_JoyDeviceEvent;
    var caxis:SDL_ControllerAxisEvent;
    var cbutton:SDL_ControllerButtonEvent;
    var cdevice:SDL_ControllerDeviceEvent;
    var quit:SDL_QuitEvent;
    var user:SDL_UserEvent;
    var syswm:SDL_SysWMEvent;
    var tfinger:SDL_TouchFingerEvent;
    var mgesture:SDL_MultiGestureEvent;
    var dgesture:SDL_DollarGestureEvent;
    var drop:SDL_DropEvent;
}

@:structAccess
extern class SDL_CommonEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
}

@:structAccess
extern class SDL_WindowEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var windowID:UInt32;
    var event:UInt8;
    var data1:Int32;
    var data2:Int32;
}

typedef SDL_Scancode = Int;
typedef SDL_Keycode = Int32;

@:structAccess
extern class SDL_Keysym {
    var scancode:SDL_Scancode;
    var sym:SDL_Keycode;
    var mod:UInt16;
    var unused:UInt32;
}

@:structAccess
extern class SDL_KeyboardEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var state:UInt8;
    var repeat:UInt8;
    var keysym:SDL_Keysym;
}

@:structAccess
extern class SDL_TextEditingEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var windowID:UInt32;
    var text:ConstCharStar;
    var start:Int32;
    var length:Int32;
}

@:structAccess
extern class SDL_TextInputEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var windowID:UInt32;
    var text:ConstCharStar;
}

@:structAccess
extern class SDL_MouseMotionEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var windowID:UInt32;
    var which:UInt32;
    var state:UInt32;
    var x:Int32;
    var y:Int32;
    var xrel:Int32;
    var yrel:Int32;
}

@:structAccess
extern class SDL_MouseButtonEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var windowID:UInt32;
    var which:UInt32;
    var button:UInt8;
    var state:UInt8;
    var clicks:UInt8;
    var x:Int32;
    var y:Int32;
}

@:structAccess
extern class SDL_MouseWheelEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var windowID:UInt32;
    var which:UInt32;
    var x:Int32;
    var y:Int32;
}

typedef SDL_JoystickID = Int32;

@:structAccess
extern class SDL_JoyAxisEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:SDL_JoystickID;
    var axis:UInt8;
    var value:Int16;
}

@:structAccess
extern class SDL_JoyBallEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:SDL_JoystickID;
    var ball:UInt8;
    var xrel:Int16;
    var yrel:Int16;
}

@:structAccess
extern class SDL_JoyHatEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:SDL_JoystickID;
    var hat:UInt8;
    var value:UInt8;
}

@:structAccess
extern class SDL_JoyButtonEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:SDL_JoystickID;
    var button:UInt8;
    var state:UInt8;
}

@:structAccess
extern class SDL_JoyDeviceEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:Int32;
}

@:structAccess
extern class SDL_ControllerAxisEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:SDL_JoystickID;
    var axis:UInt8;
    var value:Int16;
}

@:structAccess
extern class SDL_ControllerButtonEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:SDL_JoystickID;
    var button:UInt8;
    var state:UInt8;
}

@:structAccess
extern class SDL_ControllerDeviceEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var which:Int32;
}

@:structAccess
extern class SDL_QuitEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
}

@:structAccess
extern class SDL_UserEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var windowID:UInt32;
    var code:Int32;
    var data1:RawPointer<Void>;
    var data2:RawPointer<Void>;
}

extern class SDL_SysWMmsg {}

@:structAccess
extern class SDL_SysWMEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var msg:RawPointer<SDL_SysWMmsg>;
}

typedef SDL_TouchID = Int64;
typedef SDL_FingerID = Int64;
typedef SDL_GestureID = Int64;

@:structAccess
extern class SDL_TouchFingerEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var touchId:SDL_TouchID;
    var fingerId:SDL_FingerID;
    var x:Float32;
    var y:Float32;
    var dx:Float32;
    var dy:Float32;
    var pressure:Float32;
}

@:structAccess
extern class SDL_MultiGestureEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var touchId:SDL_TouchID;
    var dTheta:Float32;
    var dDist:Float32;
    var x:Float32;
    var y:Float32;
    var numFingers:UInt16;
    var padding:UInt16;
}

@:structAccess
extern class SDL_DollarGestureEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var touchId:SDL_TouchID;
    var gestureId:SDL_GestureID;
    var numFingers:UInt32;
    var error:Float32;
    var x:Float32;
    var y:Float32;
}

@:structAccess
extern class SDL_DropEvent {
    var type:SDL_EventType;
    var timestamp:UInt32;
    var file:ConstCharStar;
}
