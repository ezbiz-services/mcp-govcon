# Installing GovCon Intelligence MCP Server

This is a hosted MCP server — no local installation needed.

## Setup (30 seconds)

1. Get a free API key: https://govcon.ezbizservices.com/signup
2. Add this to your MCP client configuration:

```json
{
  "mcpServers": {
    "govcon": {
      "url": "https://govcon.ezbizservices.com/mcp",
      "headers": {
        "x-api-key": "YOUR_API_KEY"
      }
    }
  }
}
```

## Available Tools

- `search_contracts` — Search federal contract opportunities on SAM.gov with NAICS, set-aside, agency, and keyword filters
- `analyze_agency` — Federal agency spending patterns, top contractors, and upcoming opportunities via USASpending.gov
- `competitor_win_analysis` — Analyze competitor federal contract wins, agencies, values, and win patterns
- `set_aside_tracker` — Track small business set-asides (8(a), HUBZone, SDVOSB, WOSB, SBA) with deadlines and trends

## Requirements

- Any MCP-compatible client (Claude Desktop, Cursor, Cline, Windsurf, etc.)
- Free API key (no credit card required)
