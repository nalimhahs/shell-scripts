#!/bin/bash

head "$1" > "$3"

head -20 "$2" | tail >> "$3"
