# Use a base image with Deno installed
FROM denoland/deno:alpine-2.0.0

# Set the working directory
WORKDIR /app

# Copy your project files (including deno.json and deno.lock)
COPY . .

# Install the dependencies using `deno install`
RUN deno install --allow-net --allow-env main.ts

# Run the installed app (since it’s already installed globally, it should just run)
CMD ["main"]