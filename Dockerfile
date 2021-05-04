FROM node:12.13

# Create app directory
WORKDIR '/var/www/app'

# Install global package
RUN npm i nodemon knex pg -g

# We need to copy source to the container
COPY . .

# Expose the port
EXPOSE 3000
