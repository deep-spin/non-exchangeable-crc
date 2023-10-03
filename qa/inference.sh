#! /bin/bash

DATA_DIR="/mnt/data/antoniofarinhas/data/dpr-data/downloads"
OUTPUT_DIR="/home/antoniofarinhas/repos/conformal-risk/qa/results"

mkdir -p $OUTPUT_DIR

python train_extractive_reader.py \
       prediction_results_file="${OUTPUT_DIR}/predictions.json" \
       dev_files="${DATA_DIR}/data/retriever_results/nq/single-adv-hn/test.json"  \
       gold_passages_src_dev="${DATA_DIR}/data/gold_passages_info/nq_test.json" \
       model_file="${DATA_DIR}/checkpoint/reader/nq-single/hf-bert-base.cp" \
       eval_top_docs="[5, 10, 25, 50, 100]" \
       passages_per_question_predict=100 \
       encoder.sequence_length=350 \
       train.dev_batch_size=16 \
       train.log_batch_step=1
