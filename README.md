# cs225-container
This is a container built to locally run and test for UIUC's CS 225 Sp21

Before building and running check if docker is installed by running 
```bash
docker -v
```
or 
```bash 
docker run hello-world
```
Afterwards clone your CS 225 repository to the same directory as the Dockerfile, with the directory name cs225.

Now you can run
```bash
sudo ./built_cont.sh
```
and
```bash
sudo ./run_cont.sh 
```
to gain access to the container.

##### If you feel the need to add any other packages to the container, or to add any flags, modify to the build and run commands feel free to edit the Dockerfile or the build_cont and run_cont scripts. 

##### If you'd like to include your edit in the repository send a pull request!


