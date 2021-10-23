#!/bin/bash
for name in *\ *; 
do 
  sudo mv -v "$name" "${name// /_}"; 
done



