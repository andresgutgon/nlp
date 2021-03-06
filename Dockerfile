# Use a jupyter notes as Playground
# FROM jupyter/scipy-notebook:d979fa1b8c4a
FROM jupyter/scipy-notebook:latest

# Install from requirements.txt file
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

