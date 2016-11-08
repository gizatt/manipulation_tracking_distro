# set root to oot of software directory
export MT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"

# Primary software build directoy for externals
export PATH=$MT_ROOT/build/bin:$PATH
export PATH=$MT_ROOT/build/src/manipulation_tracking-build/bin/:$PATH

export LIBRARY_PATH=$MT_ROOT/build/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=$MT_ROOT/build/lib:$LD_LIBRARY_PATH
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/lcmtypes_bot2-core.jar
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/lcmtypes_bot2-frames.jar
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/lcmtypes_bot2-procman.jar
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/lcmtypes_bot2-param.jar
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/lcmtypes_drake.jar
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/lcmtypes_kinect.jar
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/lcm.jar
export CLASSPATH=$CLASSPATH:$MT_ROOT/build/share/java/jchart2d-3.2.2.jar

# add lcm libs to pythonpath
export PYTHONPATH=$MT_ROOT/build/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=$MT_ROOT/build/lib/python2.7/dist-packages:$PYTHONPATH