# Stage 1: Install dependencies
FROM node:20-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

# Stage 2: Run the application
FROM node:20-alpine
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .

EXPOSE 3000

# Command to run the server with nodemon for development
CMD [ "npm", "run", "dev" ]

# Command to run the server for production
# CMD [ "node", "src/server.js" ]