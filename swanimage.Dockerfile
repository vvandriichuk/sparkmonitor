FROM cernphsft/systemuser:test

#Possible fix for serverextension not loading??
RUN sudo pip3 install jupyter_nbextensions_configurator 

ADD ./extension/ /extension/
ADD ./notebooks/ /notebooks/

RUN which pip3; pip3 install /extension/
RUN pip2 install /extension/

#RUN /usr/local/bin/jupyter serverextension enable sparkmonitor --user --py
#RUN sudo /usr/local/bin/jupyter serverextension enable sparkmonitor --py
#RUN sudo /usr/local/bin/jupyter serverextension enable sparkmonitor --sys-prefix --py

ADD systemuser.sh /srv/singleuser/systemuser.sh