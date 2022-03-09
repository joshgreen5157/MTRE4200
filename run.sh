Container_Name="robotic"
Container_instance="robotic-$ServerNum"
sh buildDocker.sh $Container_Name

echo "Running container..."

docker run -it --rm --name=robotic -e DISPLAY="192.168.0.1:0.0" --mount source=my_ws,destination=/my_ws robotic