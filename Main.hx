import cpp.RawPointer.nullptr;
import cpp.RawPointer.of as ptr;
import Sdl.*;

class Main {
    static function main() {
        SDL_Init(SDL_INIT_VIDEO);
        SDL_SetMainReady();

        var win = nullptr(), ren = nullptr();
        SDL_CreateWindowAndRenderer(800, 600, 0, ptr(win), ptr(ren));

        var done = false;
        while (!done) {
            var event;
            while (SDL_PollEvent(ptr(event)) != 0) {
                switch (event.type) {
                    case Sdl.SDL_QUIT:
                        done = true;
                    case Sdl.SDL_KEYDOWN if (event.key.keysym.sym == SDLK_ESCAPE):
                        done = true;
                    case Sdl.SDL_DROPFILE:
                        trace(event.drop.file);
                    default:
                }
            }
            SDL_RenderPresent(ren);
        }


        SDL_Quit();
    }
}
