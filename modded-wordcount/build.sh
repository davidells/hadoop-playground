#!/bin/bash

HADOOP_DIR=/opt/apache-hadoop-1.0.2/

rm modded-wordcount.jar

javac -classpath $HADOOP_DIR/hadoop-core-1.0.2.jar:$HADOOP_DIR/lib/* -d classes/ src/ells/hadoop/examples/*

jar -cvf modded-wordcount.jar -C classes/ .
