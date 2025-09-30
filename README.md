# Backend API

## Overview
Application backend exposing APIs for the web client and services. Containerised for local and remote deployments.

## Scope
- Expose business APIs
- Integrate with blockchain, messaging, and data stores
- Enforce domain and security rules

## Tech stack
TBD (e.g., Node.js, NestJS, PostgreSQL)

## Endpoints
Documented via OpenAPI once implemented.

## Local development
- Install dependencies: `npm ci`
- Start dev server: see `package.json` scripts
- Environment variables: `.env` (do not commit secrets)

## Testing
`npm test` (unit). Add integration tests as features are added.

## CI
Runs lint, tests, and builds a Docker image on push and PR.

## Deployment
Images are built by CI. The `deploy` repo orchestrates environments.
