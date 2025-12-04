#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"

Write-Host "Installing Vercel CLI locally..." -ForegroundColor Green
npm install vercel

Write-Host "Building project..." -ForegroundColor Green
node node_modules/vite/bin/vite.js build

Write-Host "Deploying to Vercel..." -ForegroundColor Green
node node_modules/vercel/bin/vercel.js deploy --prod --confirm --team=shitij-yadavs-projects-3805452e

Write-Host "Deployment complete!" -ForegroundColor Green
