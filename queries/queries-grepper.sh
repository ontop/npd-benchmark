#!/bin/bash

find . -iname '*.q' -exec grep "npdv:belongsToWell ?well." {} + 
