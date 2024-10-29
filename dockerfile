# FROM jupyter/datascience-notebook:python-3.11.6

# USER root
# COPY ./scripts/* /home/jovyan/
# RUN chown -R jovyan:users /home/jovyan/ || true

# USER jovyan

# Use the base image from Jupyter Docker Stacks
FROM jupyter/datascience-notebook:x86_64-python-3.11.6

# Set the working directory
WORKDIR /home/jovyan

# Copy default files into the user's home directory
COPY ./scripts/* /home/jovyan/

# Make sure the files have the correct permissions
RUN chown -R jovyan:users /home/jovyan/*

# Set the user to jovyan (the default user in Jupyter images)
USER jovyan