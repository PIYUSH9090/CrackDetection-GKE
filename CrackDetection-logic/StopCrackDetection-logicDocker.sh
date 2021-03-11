#StopCrackDetectionLogicDocker.sh
echo "List of containers running now"
docker container ls -a
echo "crack-detection-logic container info"
docker container ls -f ancestor=piyush9090/crack-detection-logic
echo "Stopping crack-detection-logic container"
docker container stop $(docker container ls -f ancestor=piyush9090/crack-detection-logic -aq)
# Once all containers are stopped you can remove them using the 
# docker container stop command followed by the containers ID list.
echo "Removing crack-detection-logic container"
docker container rm $(docker container ls -f ancestor=piyush9090/crack-detection-logic -aq)
echo "List of containers running now"
docker container ls -a