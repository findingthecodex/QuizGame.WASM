# QuizGame - Blazor WebAssembly

Ett interaktivt quiz-spel byggt med Blazor WebAssembly och MudBlazor.

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

### Steg 1: Publicera projektet

```bash
cd QuizGame.WASM
dotnet publish -c Release
```

### Steg 2: Konfigurera för GitHub Pages

Efter publicering, kopiera innehållet från `bin/Release/net8.0/publish/wwwroot/` till din GitHub Pages repository.

**Viktigt:** Lägg till en `.nojekyll`-fil i root för att förhindra Jekyll-processing:

```bash
cd bin/Release/net8.0/publish/wwwroot/
touch .nojekyll
```

**Viktigt:** Lägg till en `404.html` för att hantera routing:

```bash
cp index.html 404.html
```

### Steg 3: Uppdatera base href

Öppna `index.html` och uppdatera `<base href="/" />` till ditt repository-namn:

```html
<base href="/QuizGame.Blazor/" />
```

Om du använder custom domain:

```html
<base href="/" />
```

### Steg 4: Push till GitHub

```bash
git add .
git commit -m "Deploy to GitHub Pages"
git push origin main
```

### Steg 5: Aktivera GitHub Pages

1. Gå till ditt repository på GitHub
2. Settings → Pages
3. Välj source: `main` branch, `/root` eller `/docs` folder
4. Spara

Din app kommer vara tillgänglig på: `https://<username>.github.io/<repository-name>/`

## 🛠️ Tech Stack

- **Blazor WebAssembly** - .NET 8
- **MudBlazor** - UI Component Library
- **C#** - Programming Language

## 📝 License

© 2026 FindingTheCode. All rights reserved.
