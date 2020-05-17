#!/bin/bash

./chinachu service operator execute &
./chinachu service wui execute &

tail -f /dev/null
