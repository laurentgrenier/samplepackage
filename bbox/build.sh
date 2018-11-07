# create a bbox with a volume
docker build -f Dockerfile . -t bbox:alpha

# tag the bbox
docker tag bbox:alpha eu.gcr.io/genuine-grid-218613/bbox:alpha

# login on the GCP registry
docker login -u _json_key -p "$(cat ../.keys/genuine-grid-218613-docker-push.json)" https://eu.gcr.io

# push the bbox on the GCP container registry
docker push eu.gcr.io/genuine-grid-218613/bbox:alpha

# docker run bbox:latest