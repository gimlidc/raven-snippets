#!/bin/bash
# In this file some useful docker commands are present for faster development

# Create docker image
docker build . -t nvidia-test

# Run interactive docker with support of nvidia and GPUs
docker run -it --entrypoint /bin/bash --runtime=nvidia --gpus all nvidia-test
