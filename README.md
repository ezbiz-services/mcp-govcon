# EzBiz Government Contracting MCP Server

[![MCP](https://img.shields.io/badge/MCP-Compatible-blue)](https://modelcontextprotocol.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Bun](https://img.shields.io/badge/runtime-Bun-black)](https://bun.sh)

AI-powered federal procurement intelligence via the [Model Context Protocol (MCP)](https://modelcontextprotocol.io). Give your AI assistant the ability to search federal contracts, analyze agency spending, track competitor wins, and monitor small business set-aside opportunities — all using SAM.gov, USASpending.gov, and FPDS data.

## Tools

| Tool | Description |
|------|-------------|
| `search_contracts` | Search federal contract opportunities on SAM.gov — filter by NAICS code, set-aside type, agency, dollar range, and keywords. Returns active solicitations with due dates, contact info, and bid requirements. |
| `analyze_agency` | Analyze a federal agency's spending patterns and contracting behavior — top contractors, spending trends, preferred NAICS codes, contract types, and upcoming opportunities. Uses USASpending.gov data. |
| `competitor_win_analysis` | Analyze a competitor's federal contract wins — awarded contracts, agencies they work with, contract values, NAICS codes, and win patterns. Find out who's winning in your space. |
| `set_aside_tracker` | Track small business set-aside opportunities across federal agencies — 8(a), HUBZone, SDVOSB, WOSB, and SBA set-asides. Shows trending categories, upcoming deadlines, and agency set-aside spending patterns. |

## Quick Start (Hosted)

**No installation required.** Use the hosted version:

1. Get a free API key at [govcon.ezbizservices.com/signup](https://govcon.ezbizservices.com/signup)
2. Add to your MCP client config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "ezbiz-govcon": {
      "url": "https://govcon.ezbizservices.com/mcp",
      "headers": {
        "x-api-key": "YOUR_API_KEY"
      }
    }
  }
}
```

3. Ask your AI assistant to research federal contracts!

### Example Prompts

- "Search for IT services contracts at the Department of Defense"
- "Analyze the Department of Veterans Affairs spending patterns"
- "What contracts has [Competitor Name] won in the last year?"
- "Show me HUBZone set-aside opportunities in NAICS 541512"

## Self-Hosting

```bash
git clone https://github.com/ezbiz-services/mcp-govcon.git
cd mcp-govcon
bun install

cp .env.example .env
# Edit .env with your OpenAI API key and admin secret

bun run server.ts
```

### Environment Variables

| Variable | Required | Description |
|----------|----------|-------------|
| `OPENAI_API_KEY` | Yes | OpenAI API key for AI-powered analysis |
| `ADMIN_SECRET` | Yes | Secret for admin API endpoints |
| `MCP_PORT` | No | Server port (default: 4203) |

## Pricing

| Tier | Price | Requests/Month |
|------|-------|----------------|
| **Free** | $0 | 10 |
| Starter | $19/mo | 200 |
| Pro | $49/mo | 1,000 |
| Business | $99/mo | 5,000 |

Start free at [govcon.ezbizservices.com](https://govcon.ezbizservices.com)

## Architecture

- **Runtime:** [Bun](https://bun.sh)
- **Protocol:** [MCP SDK](https://www.npmjs.com/package/@modelcontextprotocol/sdk) (Streamable HTTP transport)
- **AI:** OpenAI GPT-4o for analysis
- **Data Sources:** SAM.gov, USASpending.gov, FPDS
- **Auth:** API key-based with tiered rate limiting

## Links

- **Homepage:** [govcon.ezbizservices.com](https://govcon.ezbizservices.com)
- **API Docs:** [govcon.ezbizservices.com/docs](https://govcon.ezbizservices.com/docs)
- **Sign Up:** [govcon.ezbizservices.com/signup](https://govcon.ezbizservices.com/signup)
- **GitHub:** [github.com/ezbiz-services/mcp-govcon](https://github.com/ezbiz-services/mcp-govcon)

## License

MIT — see [LICENSE](LICENSE)
