# NERV Theme for JetBrains IDEs

A dark editor theme inspired by 80s/90s cyberpunk interfaces, Evangelion's NERV headquarters, and the green-tinted cinematography of Wong Kar-wai.

![NERV Theme Screenshot](screenshot.png)

## The Aesthetic

Deep oceanic greens meet warning-sign orange. Phosphor glow on aging CRT monitors. The quiet hum of a command terminal in an underground facility.

**Color Philosophy:**
- **Background**: Deep sea darkness (`#0a1612`)
- **Foreground**: Muted sage (`#8fb3a5`)
- **Accent**: Signal orange (`#e85d04`)
- **Functions**: Subdued purple (`#8a5a8a`)
- **Types**: Industrial teal (`#3a7a8c`)
- **Strings**: Organic green (`#4a8c5c`)

## Supported IDEs

IntelliJ IDEA, PyCharm, GoLand, WebStorm, PhpStorm, RubyMine, CLion, Rider, DataGrip, Android Studio

## Installation

### Manual Installation

1. Download `nerv-theme-1.0.0.zip` from [Releases](https://github.com/tggo/nerv-theme/releases)
2. Open your JetBrains IDE
3. Go to **Settings** → **Plugins**
4. Click ⚙️ → **Install Plugin from Disk...**
5. Select the downloaded zip file
6. Restart IDE
7. Go to **Settings** → **Appearance & Behavior** → **Appearance**
8. Select **NERV** from the Theme dropdown

## Building from Source

```bash
git clone https://github.com/tggo/nerv-theme.git
cd nerv-theme
make build
# Output: build/distributions/nerv-theme-1.0.0.zip
```

Test in sandboxed IDE:
```bash
make run
```

## Color Palette

| Element | Hex |
|---------|-----|
| Background | `#0a1612` |
| Foreground | `#8fb3a5` |
| Accent | `#e85d04` |
| Keywords | `#e85d04` |
| Strings | `#4a8c5c` |
| Numbers | `#d4a017` |
| Functions | `#8a5a8a` |
| Types | `#3a7a8c` |
| Properties | `#c97a4a` |
| Comments | `#4a6a5d` |
| Error | `#c92a2a` |
| Warning | `#d4a017` |

## Credits

Original theme by [Jane Manchun Wong](https://github.com/wongmjane/nerv-theme). Ported to JetBrains IDEs.

## License

MIT
