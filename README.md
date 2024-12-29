# Particle Filter Docker

A standalone docker to use right away with sensor and zed cameras.

## Getting Started

1. **Setup the particle filter for that house:**
Follow the instructions in the particle_filter_mesh repository to configure the particle filter for your specific house environment.  [particle_filter_mesh repository](https://github.com/olaghattas/particle_filter_mesh) 

2. **Extract and Update Camera Positions:**
Extract the position of the cameras in the environment and update the yaml file in the config folder file in the aptags_tf_broadcast package. [aptags_tf_broadcast repository](https://github.com/olaghattas/aptags_tf_broadcast)

3. **Build the Docker Image:**
build the docker with updated particle_filter_mesh and aptags_tf_broadcaster packages
   ```
   cd particle_filter_docker
   docker build -t docker_username/pf_docker:tag -f Dockerfile.txt 
   ```
Replace <docker_username> with your Docker Hub username.
Replace <tag> with a descriptive tag reflecting the changes.

3. **Update Docker Compose Configuration:**
Edit the docker-compose.yaml file to include the name and tag used during the Docker build.

NOTE: Ensure the Dockerfile.txt clones the repositories containing your updates to particle_filter_mesh and aptags_tf_broadcaster.

## Prerequisities

Ensure the following are installed before running this container:

Docker:[Linux](https://docs.docker.com/linux/started/)
Docker Compose

## Usage
The package includes a docker-compose.yaml 

```
docker-compose up
```
you can also follow this gist to have the docker start at the starting of the system.
https://gist.github.com/mosquito/b23e1c1e5723a7fd9e6568e5cf91180f

### Environment Variables

* `ROS_IP` - A Description
* `ROS_DOMAIN_ID` - Domain id of the ROS2 

### Volumes

* `/launch_pf.bash` - The required launch file to 
