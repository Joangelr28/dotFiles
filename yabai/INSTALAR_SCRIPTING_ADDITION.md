# Por qué yabai no mueve ventanas

Yabai necesita la **scripting addition** cargada en el sistema para poder:
- Cambiar de espacio (space --focus)
- Mover ventanas entre espacios (window --space)
- Aplicar las reglas de asignación de apps a espacios

Sin ella, las reglas se cargan pero los comandos fallan con:
`cannot focus space due to an error with the scripting-addition`

---

## Pasos (ejecuta en la terminal)

### 1. Crear sudoers para que load-sa no pida contraseña

Copia y pega este comando **tal cual** (usa tu usuario si no eres vilk4s):

```bash
echo "vilk4s ALL=(root) NOPASSWD: sha256:7f17e8ff8a6131368c013af4029f3831a8e57723d5e2413a3e3f6cc1b8cdae52 /opt/homebrew/bin/yabai --load-sa" | sudo tee /private/etc/sudoers.d/yabai
```

**Importante:** Si actualizas yabai con brew, el SHA256 cambia. Vuelve a generar la línea con:

```bash
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d ' ' -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai
```

### 2. Instalar y cargar la scripting addition (una vez)

```bash
sudo /opt/homebrew/bin/yabai --load-sa
```

(En tu versión, `--load-sa` instala y carga. Si pidiera `--install-sa`, sería antes; en 7.1.16 solo hace falta `--load-sa`.)

### 3. Reiniciar yabai

```bash
launchctl unload ~/Library/LaunchAgents/com.koekeishiya.yabai.plist
launchctl load ~/Library/LaunchAgents/com.koekeishiya.yabai.plist
```

O reinicia el Mac: el LaunchAgent ya está configurado para ejecutar `start.sh`, que carga la scripting addition y luego arranca yabai.

---

## Comprobar que funciona

```bash
yabai -m space --focus 2
```

Si cambia al espacio 2 sin error, está bien. Luego abre una app (por ejemplo Arc) y debería ir al espacio que tienes en las reglas.
