#!/bin/bash

# Deploy script for GitHub Pages - Manual deployment
# For automatic deployment, use GitHub Actions workflow instead

set -e # Exit on error

REPO_NAME="QuizGame.WASM"
BASE_HREF="/QuizGame.WASM/"

echo "🚀 Building QuizGame for production..."
dotnet publish -c Release -o release

echo "📁 Preparing for GitHub Pages..."
cd release/wwwroot/

# Create .nojekyll to disable Jekyll
echo "   Creating .nojekyll file..."
touch .nojekyll

# Update base href in index.html
echo "   Updating base href to ${BASE_HREF}..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s|<base href=\"/\" />|<base href=\"${BASE_HREF}\" />|g" index.html
else
    # Linux
    sed -i "s|<base href=\"/\" />|<base href=\"${BASE_HREF}\" />|g" index.html
fi

# Copy index.html to 404.html for SPA routing
echo "   Creating 404.html for SPA routing..."
cp index.html 404.html

echo ""
echo "✅ Build complete!"
echo ""
echo "📍 Files are ready in: release/wwwroot/"
echo ""
echo "📋 Deployment options:"
echo ""
echo "Option 1 - Automatic (Recommended):"
echo "   Just push to GitHub and the Actions workflow will deploy automatically:"
echo "   git add ."
echo "   git commit -m \"Update app\""
echo "   git push origin main"
echo ""
echo "Option 2 - Manual deployment to gh-pages branch:"
echo "   cd release/wwwroot/"
echo "   git init"
echo "   git add -A"
echo "   git commit -m 'Deploy to GitHub Pages'"
echo "   git push -f https://github.com/findingthecodex/${REPO_NAME}.git main:gh-pages"
echo ""
echo "🌐 After deployment, your app will be available at:"
echo "   https://findingthecodex.github.io/${REPO_NAME}/"
echo ""
