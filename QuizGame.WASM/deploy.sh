#!/bin/bash

# Deploy script for GitHub Pages

echo "🚀 Building QuizGame for production..."
dotnet publish -c Release

echo "📁 Preparing for GitHub Pages..."
cd bin/Release/net8.0/publish/wwwroot/

# Create .nojekyll to disable Jekyll
touch .nojekyll

# Copy index.html to 404.html for SPA routing
cp index.html 404.html

echo "✅ Build complete!"
echo ""
echo "📋 Next steps:"
echo "1. Update <base href='/'/> in index.html to match your repository name"
echo "   Example: <base href='/QuizGame.Blazor/'/>"
echo ""
echo "2. Copy all files from bin/Release/net8.0/publish/wwwroot/ to your GitHub Pages repository"
echo ""
echo "3. Push to GitHub and enable GitHub Pages in repository settings"
echo ""
echo "📍 Files are ready in: bin/Release/net8.0/publish/wwwroot/"
