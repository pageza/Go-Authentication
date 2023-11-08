# Start from the official Golang image.
FROM golang:latest

# Set the working directory inside the container.
WORKDIR /app

# Copy the local package files to the container's workspace.
ADD . /app

# Build your application on the container.
RUN go build -o main .

# Run the application when the container starts.
CMD ["/app/main"]
