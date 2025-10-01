# Backend API

## Purpose
Expose application APIs and mediate **writes** to the blockchain, applying domain rules and security.

## Responsibilities
- REST/GraphQL endpoints for the UI and services
- Transaction orchestration and signature flows
- Reading on-chain data server-side when cache/logic is needed

## Interfaces (in / out)
- **In:** HTTP from **web-app**
- **Out:** Chain RPC (node provider), DB/cache (TBD)
- **In (artefacts):** **ABIs** from `contracts` release artefacts

## Interactions with other repositories
- **contracts:** loads ABIs to encode/decode calls/events
- **web-app:** primary client of these endpoints
- **deploy:** container image is referenced here for local/staging/prod

## Directory layout (provisional)
- `src/` service code
- `test/` tests
- `Dockerfile` container build

## Local development
- Install dependencies: `npm ci`
- Start dev server (see `package.json` scripts)
- Configuration via `.env` (never commit secrets)

## Testing
- `npm test` for unit tests; add integration tests as features land

## CI/CD
- Lint & tests on PR/push
- Build Docker image on push to `main` (optional push to registry)

## Versioning & releases
- API versions via path/header when needed
- Container images tagged by commit/semver; consumed by `deploy`
