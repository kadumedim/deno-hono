# Use a base image with Deno installed
FROM denoland/deno:alpine-2.1.3

# Set the working directory
WORKDIR /app

# Copy your files to the working directory
COPY . .

# Pre-fetch dependencies based on the main entrypoint
RUN deno install

# Run the Deno app using permissions to access the environment and network
CMD ["run", "--allow-net", "--allow-env", "main.ts"]
