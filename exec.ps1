docker build -t authgear-example-flask .
docker run --env-file .env -p 3000:3000 -it authgear-example-flask
