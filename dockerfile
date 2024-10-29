# Use the base image from Jupyter Docker Stacks
FROM jupyter/datascience-notebook:x86_64-python-3.11.6

# # Set the working directory
# WORKDIR /home/jovyan

# USER 1000

# # Copy default files into the user's home directory
# COPY ./scripts/* /home/jovyan/

# # Make sure the files have the correct permissions
# # RUN chown -R jovyan:users /home/jovyan/*

RUN pip install nbgitpuller