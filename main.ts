import { Hono } from 'hono'
import userRoutes from './routes/userRoutes.ts'
import { cors } from 'hono/cors'

const app = new Hono()

// Cors setup
app.use('*', cors())
// Your own routes here
app.route('/users', userRoutes)

app.get('/', (c) => {
  return c.text('Hello Hono!')
})

app.get('/health', (c) => {
  // Return a 200 status with a simple message or data
  return c.json({ status: 'ok', uptime: process.uptime() })
})

const port = process.env.PORT || 3000

Deno.serve({ port: port }, app.fetch)
