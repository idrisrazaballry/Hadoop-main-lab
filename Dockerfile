FROM apache/hadoop:3.3.6

USER root

COPY core-site.xml /opt/hadoop/etc/hadoop/core-site.xml
COPY hdfs-site.xml /opt/hadoop/etc/hadoop/hdfs-site.xml

RUN mkdir -p /opt/hadoop/dfs/name \
    /opt/hadoop/dfs/data && \
    chown -R hadoop:hadoop /opt/hadoop/dfs

USER hadoop