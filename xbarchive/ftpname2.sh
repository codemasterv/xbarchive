#!/bin/bash
for f in **\[**\!**\]*; 
do 
  sudo mv "$f" "${f//\[\!\]/}"; 
done
