FROM cp.icr.io/cp/appc/ace-server-prod@sha256:4615d78e724c91e49b222646da187545e610b4fce19f1188caa8cf675858e914
USER root
COPY barfile /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000