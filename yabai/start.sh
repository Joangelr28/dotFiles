#!/bin/bash
# Carga la scripting addition (requiere sudo sin contraseña vía sudoers) y arranca yabai.
# Sin la scripting addition, yabai no puede mover ventanas ni cambiar de espacios.
sudo /opt/homebrew/bin/yabai --load-sa 2>/dev/null
exec /opt/homebrew/bin/yabai
