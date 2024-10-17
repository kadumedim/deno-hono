# Use a base image with Deno installed
FROM denoland/deno:alpine-2.0.0

# Set the working directory
WORKDIR /app

# Copy only the deno.json and deno.lock files
COPY deno.json deno.lock ./

# Pre-fetch dependencies using the lock file to ensure consistency
RUN deno cache --lock=deno.lock

# Copy your files to the working directory
COPY . .

# Run the Deno app using permissions to access the environment and network
CMD ["run", "--allow-net", "--allow-env", "main.ts"]
