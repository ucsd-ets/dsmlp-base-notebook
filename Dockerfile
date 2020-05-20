ARG DATAHUB_CONTAINER=ucsdets/datahub-base-notebook:2019.4.9
FROM $DATAHUB_CONTAINER as datahub
FROM ucsdets/scipy-ml-notebook:2019.4-stable

USER root

# RUN apt-get install ...
# RUN pip install ...
# RUN conda install ...

COPY --from=datahub /run_jupyter.sh /
USER $NB_UID:$NB_GID

