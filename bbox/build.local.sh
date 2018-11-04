# create a bbox with a volume
docker build -f Dockerfile . -t bbox:latest

# tag the bbox
docker tag bbox eu.gcr.io/genuine-grid-218613/bbox:latest

docker run bbox:latest