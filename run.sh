#!/bin/bash
sudo yum update -y
sudo yum install java-1.8.0-openjdk
aws s3 ls s3://maven-buckets | tail -1 > bfile
cat bfile | awk ' { print $4 } ' bfile
a=bfile
aws s3 cp s3://maven-buckets/$a $a
java -jar $a 
