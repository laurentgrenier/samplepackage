# create a bbox with a volume
docker build -f Dockerfile . -t bbox:latest

# tag the bbox
docker tag bbox eu.gcr.io/genuine-grid-218613/bbox:latest

# login on the GCP registry
docker login -u _json_key -p "$(cat ../.keys/genuine-grid-218613-docker-push.json)" https://eu.gcr.io

# push the bbox on the GCP container registry
docker push eu.gcr.io/genuine-grid-218613/bbox:latest

# docker run bbox:latest