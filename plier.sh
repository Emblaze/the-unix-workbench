#!/usr/bin/env bash
# file: plier.!sh

function plier {
  local product=0

  for element in $@
  do
  # echo $@
  # echo $element
  if [[ $element -eq 0 ]]
  then
    product=0
    break
  else
    if [[ $product -eq 0 ]]
    then
      let product=$element
    else
      let product=product\*$element
    fi
  fi
  done

  echo $product
}
