#!/bin/bash
set JVM_ARGS="-Xms1024m -Xmx2048m -Dpropname=value"

#Test file
TEST_FILE="RegistrationAndLoginTest.jmx"

#Delete old results & logs
rm -rf ./results
rm -rf ./logs

#Run jmeter test
./jmeter/bin/jmeter -n -t $TEST_FILE -j ./logs/jmeter.log -e -l ./logs/log.jml -o ./results