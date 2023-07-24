
# Use the official Golang base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Golang application source code into the container
COPY . .

# Build the Golang 
RUN go mod tidy
RUN go build -o main

#FROM baseImage

EXPOSE 8080

# Set the entrypoint to run your Golang application
CMD ["./main"]

