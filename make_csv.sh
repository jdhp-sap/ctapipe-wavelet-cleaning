#!/bin/sh

export PYTHONPATH=.:$PYTHONPATH
source activate cta

INPUT_DIR=./xps/2017_MM_DD_sapcta/
OUTPUT_FILE=./xps/best.csv

./utils/benchmark_json_to_flat_v2.py -o "${OUTPUT_FILE}" \
    ${INPUT_FILE}/score_*_ref.json \
    ${INPUT_FILE}/score_*_input.json \
    ${INPUT_FILE}/score_*_tc.json \
    ${INPUT_FILE}/score_*_WT-K-k-C1-m3-n4-s3.json \
    ${INPUT_FILE}/score_*_WT-K-k-C1-m3-n4-s2-2-3-3.json

