# Declare image
FROM node:16.11.1

RUN mkdir -p /app/node_modules && chown -R node:node /app


# Work folder
WORKDIR /app

# Copy content files
COPY todolist-on-herbs/package*.json ./
####COPY todolist-on-herbs/package-lock.json ./
####COPY todolist-on-herbs/src/ ./src
####COPY todolist-on-herbs/.editorconfig/ ./.editorconfig
####COPY todolist-on-herbs/.env.prd ./.env.prd
####COPY todolist-on-herbs/.env.stg ./.env.stg
####COPY todolist-on-herbs/.eslintrc.json ./.eslintrc.json
####COPY todolist-on-herbs/.gitignore ./.gitignore
####COPY todolist-on-herbs/.prettierrc ./.prettierrc
####COPY todolist-on-herbs/. .

RUN npm install
#RUN npm install -g npm@8.6.0 -g

# Update Node
# RUN npm update

# RUN npm config set unsafe-perm true

COPY --chown=node:node todolist-on-herbs/src/ ./src
COPY --chown=node:node todolist-on-herbs/.editorconfig/ ./.editorconfig
COPY --chown=node:node todolist-on-herbs/.env.prd ./.env.prd
COPY --chown=node:node todolist-on-herbs/.env.stg ./.env.stg
COPY --chown=node:node todolist-on-herbs/.eslintrc.json ./.eslintrc.json
COPY --chown=node:node todolist-on-herbs/.gitignore ./.gitignore
COPY --chown=node:node todolist-on-herbs/.prettierrc ./.prettierrc
COPY --chown=node:node todolist-on-herbs/. .

USER node



EXPOSE 4000

CMD ["npm", "start"]
