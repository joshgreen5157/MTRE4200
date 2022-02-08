Container_Name="robotic"
Container_instance="robotic-$ServerNum"
Display="10.0.0.13:0.0"
sh buildDocker.sh $Container_Name

echo "Running container..."

docker run -it --rm --name=robotic -e DISPLAY="10.0.0.13:0.0" --mount source=my_ws,destination=/my_ws robotic