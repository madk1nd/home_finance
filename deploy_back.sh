#!/bin/bash

cp target/home*.jar /home/madk1nd/finance/back/home_finance.jar
systemctl restart finance_back.service
