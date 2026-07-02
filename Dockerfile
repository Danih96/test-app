FROM alpine:3.21
RUN apk add --no-cache nodejs npm
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
