# Use a base image with Deno installed
FROM denoland/deno:alpine-2.0.0

# Set the working directory
WORKDIR /app

# Copy your files to the working directory
COPY . .

# Specify the port to expose (default 3000 or use an env variable)
EXPOSE ${PORT:-3000}

# Run the Deno app using permissions to access the environment and network
CMD ["run", "--allow-net", "--allow-env", "main.ts"]
