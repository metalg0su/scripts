#!/bin/bash
source venv/bin/activate
pip install -e .
make generate-proto

clear
python -V
