docker run --rm -it --name start -v `pwd`/build/:/usr/share/nginx/html/ -p 3333:80 nginx:1.13-alpine

docker build . -t start:1
docker tag start:1 localhost:5000/start:1

docker push localhost:5000/start:1
