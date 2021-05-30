#!/bin/bash
aws cloudformation deploy --stack-name BelongCC --template-file BelongCCStack.yml --parameter-overrides DeveloperIP=$1 KeyName=$2 --no-fail-on-empty-changeset