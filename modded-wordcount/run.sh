#!/bin/bash

HADOOP_DIR=/opt/apache-hadoop-1.0.2/

RM_CMD="rm -fdr /tmp/wordcount-out/"
[ x"$1" = x"--hdfs" ] && { 
    RM_CMD="$HADOOP_DIR/bin/hadoop fs -rmr -skipTrash /tmp/wordcount-out/"
}


$RM_CMD

#$HADOOP_DIR/bin/hadoop jar \ 
#	modded-wordcount.jar \ 
#	ells.hadoop.examples.WordCount \
#	/tmp/wordcount-in/ /tmp/wordcount-out/

$HADOOP_DIR/bin/hadoop jar modded-wordcount.jar ells.hadoop.examples.WordCountWithBuiltins /tmp/wordcount-in/ /tmp/wordcount-out/
