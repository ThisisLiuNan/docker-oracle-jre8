FROM hub.c.163.com/library/ubuntu:zesty

# Install Java.
Add jre1.8.0_151 /usr/lib/jvm/java-8-oracle


# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV crypto.policy unlimited

# Define default command.
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle\nexport PATH=$PATH:$JAVA_HOME/bin" > /etc/profile.d/java-env.sh
RUN update-alternatives --install /bin/java java $JAVA_HOME/bin/java 999999
RUN chmod 777 /bin/java



