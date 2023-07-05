#!/bin/bash

#echo $((${2-unset} $1 ${3-unset} $1 ${4-unset} $1 ${5-unset} $1 ${6-unset} $1 ${7-unset} $1 ${8-unset} $1 ${9-unset} $1 ${10-unset}))

echo $(( $@ ))