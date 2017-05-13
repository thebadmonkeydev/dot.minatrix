#!/bin/bash
#
# ucopy()
#
# Interactively copies the file in $1 to $2.

ucopy () {
  cp -iv "$1" "$2"
}
