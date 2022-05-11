FROM guntribam/java:adoptopenjdk-8.0.322

USER root

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install -y libxext-dev libxrender-dev libxtst-dev libgtk2.0-0 libcanberra-gtk-module libeclipse-e4-ui-workbench-swt-java libeclipse-e4-ui-swt-gtk-java  libeclipse-e4-ui-css-swt-theme-java libeclipse-e4-ui-workbench-renderers-swt-java libswt-gtk-4-java wget

RUN wget https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2020-06/R/eclipse-java-2020-06-R-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q 

RUN tar -xf /tmp/eclipse.tar.gz -C /opt && rm /tmp/eclipse.tar.gz

USER asdf
CMD /opt/eclipse/eclipse
