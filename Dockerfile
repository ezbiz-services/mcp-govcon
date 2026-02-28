FROM oven/bun:1-alpine
WORKDIR /app
COPY package.json ./
RUN bun install --production
COPY server.ts ./
COPY lib/ ./lib/
COPY tools/ ./tools/
COPY pages/ ./pages/
COPY static/ ./static/
RUN mkdir -p data
ENV MCP_PORT=4203
EXPOSE 4203
CMD ["bun", "run", "server.ts"]
