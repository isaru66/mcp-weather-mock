# MCP Weather Mock Server

A mock weather MCP (Model Context Protocol) server that provides weather data for cities across multiple countries.

## Quickstart

### 1. Install dependencies

```bash
pip install -r requirements.txt
```

### 2. Run the server

```bash
python main.py
```

The server starts at `http://localhost:8000`.

### 3. Connect from an MCP client

Use the streamable HTTP endpoint:

```
http://localhost:8000/mcp
```

## Available Tools

| Tool | Description |
|------|-------------|
| `get_cities` | Get list of cities for a country (usa, canada, uk, australia, india, portugal, thailand) |
| `get_weather` | Get weather info for a city (supports Thai names for Thai cities) |

## Example Usage

**Get cities:**
```json
{"country": "thailand"}
// Returns: ["Bangkok", "Chiang Mai", "Phuket", ...]
```

**Get weather:**
```json
{"city": "Bangkok"}
// Returns: {"city": "Bangkok", "condition": "Sunny", "temperature": 28.5, "humidity": 65.2}
```

## Supported Countries

- USA
- Canada
- UK
- Australia
- India
- Portugal
- Thailand (supports both English and Thai city names)
