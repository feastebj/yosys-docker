sudo docker build -t yosys .
sudo docker run --name yosys -it --rm -v /home/ben/Documents/docker-stuff:/yosys/docker-stuff \yosys:latest

