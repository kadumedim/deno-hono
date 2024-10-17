# Deno 2 + Hono Starter Template

This is a barebones starter template for a Deno 2 project using the [Hono](https://hono.dev/) web framework. It provides a simple foundation to build a web application with route grouping, CORS setup, and health check endpoints. This template is ready to be deployed on [Railway](https://railway.app/).

## Features
- **Hono.js**: A fast and minimal web framework for Deno.
- **CORS Middleware**: Enabled for all routes by default.
- **Route Grouping**: Cleanly organize routes in separate modules (in `routes`).
- **Health Check**: A simple endpoint to monitor the uptime of the service.

Logging wasn't included since it is [currently marked as UNSTABLE](https://jsr.io/@std/log), add your own or use the one linked at your own risk.

We also utilize a `Dockerfile` as Railway only provides Deno 1 at the moment.
