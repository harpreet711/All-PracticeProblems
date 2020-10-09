#!/bin/bash -x
counter=10
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Grapes"
echo ${Fruits[@]}
