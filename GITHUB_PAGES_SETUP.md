# GitHub Pages Setup - Klart! ✅

## Vad har gjorts:

### 1. ✅ GitHub Actions Workflow Skapad
En automatisk deployment-workflow har skapats i `.github/workflows/deploy.yml` som:
- Bygger projektet automatiskt vid varje push till `gh` branch
- Uppdaterar base href till `/QuizGame.WASM/`
- Skapar 404.html för SPA routing
- Skapar .nojekyll fil
- Publicerar till `gh-pages` branch

### 2. ✅ Projekt Konfigurerat
- `QuizGame.WASM.csproj` uppdaterad med GitHub Pages-inställningar
- `deploy.sh` förbättrad för både automatisk och manuell deployment
- `README.md` uppdaterad med tydliga instruktioner

### 3. ✅ Ändringar Pushade
- Alla ändringar har committats och pushats till GitHub
- GitHub Actions workflow kommer köras automatiskt nu

## Nästa Steg - Aktivera GitHub Pages:

1. **Gå till ditt repository på GitHub:**
   https://github.com/findingthecodex/QuizGame.WASM

### 2. **Aktivera GitHub Pages:**
   - Klicka på **Settings** (längst till höger i menyn)
   - Scrolla ner och klicka på **Pages** i vänstermenyn
   - Under **Source**, välj:
     - Build and deployment: **GitHub Actions**
   - (Du behöver INTE välja en branch manuellt - GitHub Actions hanterar allt!)

3. **Vänta några minuter**
   - GitHub Pages bygger och publicerar din sida
   - Du ser en grön bock när det är klart

4. **Din app kommer vara tillgänglig på:**
   https://findingthecodex.github.io/QuizGame.WASM/

## Kontrollera Deployment Status:

Gå till **Actions** tab i ditt GitHub repository för att se workflow-statusen:
https://github.com/findingthecodex/QuizGame.WASM/actions

## Framtida Uppdateringar:

För att uppdatera din app i framtiden, gör bara:

```bash
# Gör dina ändringar i koden...
git add .
git commit -m "Dina ändringar"
git push origin gh
```

GitHub Actions kommer automatiskt att bygga och deploya den nya versionen!

## Felsökning:

**Om sidan inte visas:**
1. Kontrollera att du valt rätt branch (`gh-pages`) i Settings → Pages
2. Vänta 2-5 minuter efter första deployment
3. Kolla Actions-fliken för eventuella fel
4. Rensa webbläsarens cache (Cmd+Shift+R)

**Om CSS/JS inte laddar:**
- Kontrollera att base href är korrekt (`/QuizGame.WASM/`)
- Kontrollera att .nojekyll filen finns (skapas automatiskt)

---

**Lycka till med din quiz-app! 🎮**
