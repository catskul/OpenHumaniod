#!/bin/bash

rosinstall ./ .rosinstall
rosdep install re2uta_atlasCommander 
rosws
