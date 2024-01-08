# Use this image until you update cuda driver on Raven machine
# Driver version [12.0.1] must match driver version in `nvidia-smi`
FROM nvidia/cuda:12.0.1-base-ubuntu22.04

# Pip is probably missing, python3-dev adds necessary headers e.g. <cuda.h>
RUN apt-get update && \
    apt-get install -y python3-pip python3-dev

# Python packages useful for python testing
RUN pip install numpy torch

# Basic cmd for interactive docker
CMD ["/bin/bash"]

