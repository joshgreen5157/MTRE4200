ServerNum="1"
Container_Name="robotic"
Container_instance="robotic-$ServerNum"

sh buildDocker.sh $Container_Name

echo "Running container..."

docker run -i --rm --name=robotic --mount source=my_ws,destination=/my_ws robotic

# echo "Bashing into container...."

#docker exec -it $Container_Name /bin/bash