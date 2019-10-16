#!/bin/bash
source venv/bin/activate
make develop
make generate-proto

clear
python -V
