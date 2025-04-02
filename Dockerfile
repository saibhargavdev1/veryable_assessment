# Please write a Dockerfile that can be used to build an image for our NodeJS application. 
# The resulting image should be able to run once it has been built.
# 1. Use an official Node.js image with Node 22 (as required by package.json)
FROM node:22

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy only package files first to cache dependencies
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the application code
COPY . .

# 6. Expose the port your app uses (3000 from index.js)
EXPOSE 3000

# 7. Start the app using the start script in package.json
CMD ["npm", "start"]
