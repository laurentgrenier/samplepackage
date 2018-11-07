# create a bbox with a volume
docker build -f Dockerfile . -t bbox:alpha

# tag the bbox
docker tag bbox:alpha eu.gcr.io/genuine-grid-218613/bbox:alpha

docker run bbox:alpha