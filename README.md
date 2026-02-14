# Screenshot Mac

> Aplicativo macOS para captura de tela com suporte a atalhos de teclado personalizáveis e interface via Menu Bar Extra.

<p align="center">
  <img src="https://img.shields.io/github/release-date/henriqueotogami/screenshot-mac" alt="Release date">
</p>

<p align="center">
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/henriqueotogami/screenshot-mac">
  <img src="https://img.shields.io/github/checks-status/henriqueotogami/screenshot-mac/main" alt="Checks status">
  <img src="https://img.shields.io/github/issues/henriqueotogami/screenshot-mac" alt="Issues">
</p>

<p align="center">
  <img src="https://img.shields.io/github/forks/henriqueotogami/screenshot-mac?style=flat" alt="Forks">
  <img src="https://img.shields.io/github/stars/henriqueotogami/screenshot-mac?style=flat" alt="Stars">
  <img src="https://img.shields.io/github/license/henriqueotogami/screenshot-mac" alt="License">
</p>

## 📋 Sobre o Projeto

Este projeto é um aplicativo nativo para macOS que permite capturar a tela de três formas diferentes: tela inteira, janela específica ou área selecionada. Desenvolvido em SwiftUI, o app utiliza a ferramenta nativa `screencapture` do sistema e oferece uma interface minimalista acessível pela barra de menu, com atalhos de teclado configuráveis e galeria de capturas recentes com suporte a arrastar e soltar (drag & drop).

## 📁 Estrutura do Projeto

### Aplicação Principal (`/`)
- **screenshot_macApp.swift** - Ponto de entrada do app, Menu Bar Extra e janela de Settings

### View Model (`viewmodel/`)
- **ScreenCaptureViewModel.swift** - Lógica de captura de tela, integração com `screencapture`, gerenciamento de imagens e atalhos de teclado

### Views (`view/`)
- **ContentView.swift** - Interface principal com galeria em grid e botões de captura
- **menubar/MenuBarContentView.swift** - Interface compacta do Menu Bar Extra
- **settings/SettingsView.swift** - Abas de configurações (Atalhos e MenuBarExtra)
- **settings/KeyboardShortcutsView.swift** - Configuração de atalhos de teclado
- **settings/MenuBarSettingsView.swift** - Toggle para exibir/ocultar ícone na barra de menu

### Model (`model/`)
- **KeyboardShortcuts+Global.swift** - Definição dos atalhos de teclado globais (⌥⌘3, ⌥⌘4, ⌥⌘5)

## 📂 Estrutura do Repositório

```
LICENSE
README.md
screenshot_mac.entitlements  # permissões App Sandbox
screenshot_macApp.swift      # ponto de entrada, Menu Bar Extra
ContentView.swift            # interface principal com galeria
viewmodel/
 ScreenCaptureViewModel.swift  # lógica de captura e screencapture
view/
 menubar/
  MenuBarContentView.swift     # interface do ícone na barra de menu
 settings/
  SettingsView.swift           # abas de configurações
  KeyboardShortcutsView.swift  # configuração de atalhos
  MenuBarSettingsView.swift    # toggle Menu Bar Extra
model/
 KeyboardShortcuts+Global.swift  # definição dos atalhos (⌥⌘3, ⌥⌘4, ⌥⌘5)
Assets.xcassets/              # ícones e cores
Preview Content/              # assets para SwiftUI Preview
```

## 🛠️ Tecnologias Utilizadas

- **Swift** - Linguagem de programação
- **SwiftUI** - Framework de interface declarativa
- **KeyboardShortcuts** - Biblioteca para atalhos de teclado globais personalizáveis
- **screencapture** - Ferramenta nativa do macOS para captura de tela

## 📝 Funcionalidades Principais

### Tipos de Captura
- **Tela inteira** - Captura toda a área visível
- **Janela** - Captura uma janela específica selecionada
- **Área** - Captura uma região selecionada manualmente

### Interface
- Menu Bar Extra com acesso rápido às funções
- Galeria de capturas com visualização em grid
- Suporte a drag & drop das imagens capturadas
- Janela de Settings com abas para preferências

### Personalização
- Atalhos de teclado configuráveis (padrão: ⌥⌘3, ⌥⌘4, ⌥⌘5)
- Opção para mostrar/ocultar ícone na barra de menu

## 📚 Recursos e Tecnologias Abordados

- ✅ Arquitetura MVVM com SwiftUI
- ✅ Menu Bar Extra nativo do macOS
- ✅ Atalhos de teclado globais com KeyboardShortcuts
- ✅ Integração com ferramentas do sistema (`screencapture`)
- ✅ Processos externos e pasteboard (área de transferência)
- ✅ Drag & drop de imagens entre aplicações
- ✅ App Sandbox e entitlements
- ✅ Persistência de preferências com `@AppStorage`

## 🚀 Como Compilar e Executar

### Requisitos
- macOS (compatível com SwiftUI)
- Xcode 15 ou superior (recomendado)

### Passos
1. Clone o repositório
2. Abra o projeto no Xcode
3. Selecione o scheme `screenshot_mac`
4. Compile e execute com `⌘R`

### Dependências
O projeto utiliza o pacote [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts) via Swift Package Manager. O Xcode fará o download automaticamente ao abrir o projeto.

## ⚙️ Como Funciona

### Fluxo de Captura
1. O usuário aciona a captura via botão ou atalho de teclado
2. O `ScreenCaptureViewModel` executa o processo `screencapture` com os argumentos adequados:
   - Tela inteira: `[""]`
   - Janela: `["-cw"]`
   - Área: `["-cs"]`
3. A imagem capturada é salva na área de transferência (comportamento padrão do `screencapture`)
4. O app lê a imagem do pasteboard e adiciona à galeria interna
5. As imagens podem ser arrastadas para outras aplicações (drag & drop)

### Permissões
O app utiliza App Sandbox e requer permissão de leitura para arquivos selecionados pelo usuário, conforme definido em `screenshot_mac.entitlements`.

## 📄 Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 📖 Referências

- [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts) — Biblioteca para atalhos de teclado globais em macOS
- [SwiftUI](https://developer.apple.com/documentation/swiftui) — Framework de interface declarativa da Apple
- [screencapture](https://ss64.com/osx/screencapture.html) — Documentação da ferramenta nativa de captura do macOS

---

### Hashtags
#macOS #Swift #SwiftUI #Screenshot #ScreenCapture #MenuBar #KeyboardShortcuts #OpenSource #GitHub

### Meta Keywords
```
macOS, Swift, SwiftUI, captura de tela, screenshot, screencapture,
atalhos de teclado, Menu Bar, app nativo, drag and drop, código aberto
```
