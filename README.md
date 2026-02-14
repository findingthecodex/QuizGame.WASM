# QuizGame - Blazor WebAssembly

Ett interaktivt quiz-spel byggt med Blazor WebAssembly och MudBlazor.

🌐 **Live Demo**: [https://findingthecodex.github.io/QuizGame.WASM/](https://findingthecodex.github.io/QuizGame.WASM/)

## 🎮 Features

- **Gaming Quiz** - Testa din kunskap om videospel
- **Programming Quiz** - OOP Basic, OOP Advanced, Databases
- **Sport Quiz** - Muay Thai och mer
- **Animals Quiz** - Svenska djur

## 🚀 Köra projektet lokalt

```bash
cd QuizGame.WASM
dotnet run
```

Öppna sedan `http://localhost:5500` i webbläsaren.

## 📦 Publicera till GitHub Pages

### Metod 1: Automatisk deployment med GitHub Actions (Rekommenderad) ✨

Projektet är redan konfigurerat med GitHub Actions för automatisk deployment!

**Allt du behöver göra:**

```bash
git add .
git commit -m "Deploy to GitHub Pages"
git push origin gh
```

GitHub Actions kommer automatiskt att:
1. Bygga projektet
2. Konfigurera för GitHub Pages
3. Publicera till `gh-pages` branch

**Första gången - Aktivera GitHub Pages:**

1. Gå till ditt repository på GitHub
2. **Settings** → **Pages**
3. Under **Build and deployment** → **Source**, välj: **GitHub Actions**
4. (Ingen branch behöver väljas - GitHub Actions hanterar deployment automatiskt!)

Din app kommer vara tillgänglig på: `https://findingthecodex.github.io/QuizGame.WASM/`

### Metod 2: Manuell deployment med deploy.sh

Om du föredrar att deploya manuellt:

```bash
chmod +x deploy.sh
./deploy.sh
```

Följ sedan instruktionerna som scriptet visar.

## 🛠️ Tech Stack

- **Blazor WebAssembly** - .NET 8
- **MudBlazor** - UI Component Library
- **C#** - Programming Language
- **GitHub Actions** - CI/CD

## 📋 Projektstruktur

```
QuizGame.WASM/
├── .github/workflows/    # GitHub Actions för automatisk deployment
├── Layout/              # Layout-komponenter
├── Models/              # Datamodeller
├── Pages/               # Huvudsidor (kategorier)
├── Quiz/                # Quiz-komponenter
├── wwwroot/             # Statiska filer (CSS, bilder)
├── Program.cs           # Entry point
└── deploy.sh            # Manuellt deployment-script
```

## 📝 License

© 2026 FindingTheCode. All rights reserved.
