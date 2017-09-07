# Profile extensions for various things

export PATH="$HOME/bin:$PATH"
export JAVA_HOME="$(readlink -f /etc/alternatives/java_sdk)"
export JAVA_OPTS="-Xshare:off -XX:+PreserveFramePointer"
export SBT_OPTS="$JAVA_OPTS"
