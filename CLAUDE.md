# NERV Theme for JetBrains

## Project Overview
JetBrains IDE theme plugin ported from [wongmjane/nerv-theme](https://github.com/wongmjane/nerv-theme). Dark cyberpunk aesthetic inspired by Evangelion's NERV HQ.

## Tech Stack
- **Build**: Gradle with IntelliJ Platform Plugin 2.x
- **Language**: Kotlin DSL for build scripts
- **Theme format**: JSON (UI) + XML (editor colors)

## Project Structure
```
src/main/resources/
├── META-INF/plugin.xml    # Plugin manifest
└── themes/
    ├── NERV.theme.json    # UI theme (panels, buttons, menus)
    └── NERV.xml           # Editor color scheme (syntax highlighting)
```

## Commands
```bash
make build      # Build plugin → build/distributions/nerv-theme-*.zip
make run        # Test in sandboxed IDE
make clean      # Clean build artifacts
make publish    # Publish to JetBrains Marketplace (needs PUBLISH_TOKEN)
```

## Color Palette
| Role | Hex |
|------|-----|
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

## Publishing
- Manual: https://plugins.jetbrains.com/plugin/add
- Auto: `gh workflow run publish.yml`
- Token stored in `.env` and GitHub Secrets

## Version Compatibility
- `sinceBuild`: 233 (2023.3)
- `untilBuild`: 253.* (2025.3)

Update in `build.gradle.kts` → `ideaVersion { }` block.
