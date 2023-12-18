# Use an official Go runtime as a parent image
FROM golang:alpine3.18

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Download any necessary dependencies
RUN go mod download

# Build the application
RUN go build -o main .

# Run the application when the container launches
CMD ["./main"]
