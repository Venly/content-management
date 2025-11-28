# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a static content management repository for Venly (formerly Arkane Network). It contains static assets consumed by Venly's wallet and NFT marketplace services. There is no build system, test suite, or package manager—changes are deployed via GitHub Actions when pushed to `master`.

## Deployment

Changes to `connected-apps/logos/` trigger automatic S3 uploads to QA, Staging, Sandbox, and Production environments via `.github/workflows/main.yml`.

## Content Structure

### Tokens (`tokens/`)
Token metadata organized by blockchain and network: `tokens/{chain}/{network}/details/{address}.json`
- Chains: ethereum, vechain, tron, gochain, bsc, matic, avac
- Networks: mainnet, testnet (or chain-specific like kovan, shasta)
- Format: `{"name":"...", "symbol":"...", "address":"...", "decimals":..., "type":"ERC20"}`

### NFT Collections (`nfts/`)
NFT collection metadata: `nfts/{chain}/{network}/all.json`
- Chains: ethereum, matic, bsc, avac, arbitrum, hedera
- Contains verified collection info with address, name, imageUrl, description, and social media links

### Swap Trading Pairs (`swap/`)
DEX trading pair configurations: `swap/{exchange}/{network}.json`
- Exchanges: vexchange, uniswap, one-inch
- Defines `from`/`to` token pairs with secretType, symbol, and tokenAddress

### Connected Apps (`connected-apps/`)
- `logos/`: Application logo images (deployed to S3)
- `details/`: App metadata JSON with name, description, and URL

### Other Content
- `notification-templates/`: Email HTML templates for wallet notifications
- `marketing/`: Campaign-specific images and assets
- `logo/`, `img/`, `gifs/`: Various brand and UI images
- `wordlists/`: Word list files