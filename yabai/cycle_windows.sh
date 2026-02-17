#!/bin/bash
# Cicla al siguiente ventana en el espacio actual (al hacer clic en el space actual en sketchybar)
# Si estamos en la última ventana, vuelve a la primera
yabai -m window --focus next 2>/dev/null || yabai -m window --focus first
