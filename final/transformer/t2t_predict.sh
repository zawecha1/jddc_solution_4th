#! /bin/bash

export PATH=/usr/local/python3.6.5/bin/:$PATH

BASE_DIR=/home/team55/notespace/data/t2t
# BASE_DIR=/submitwork/t2t
DATA_DIR=$BASE_DIR"/data"
TRAIN_DIR=$BASE_DIR"/model"
TMP_DIR=$BASE_DIR"/tmp"
CHECKPOINT_PATH=$TRAIN_DIR"/model.ckpt-238000"

USR_DIR=/home/team55/notespace/zengbin/transformer/
# USR_DIR=/submitwork/transformer/
PROBLEM=jddc
MODEL=transformer
HPARAMS=transformer_base

DECODE_FILE=$USR_DIR"test_q.txt"
OUTPUT_FILE=$USR_DIR"answers.txt"

/usr/local/python3.6.5/bin//t2t-decoder \
  --t2t_usr_dir=$USR_DIR \
  --data_dir=$DATA_DIR \
  --problem=$PROBLEM \
  --model=$MODEL \
  --hparams_set=$HPARAMS \
  --checkpoint_path=$CHECKPOINT_PATH \
  --decode_hparams="beam_size=6,alpha=0.6,batch_size=8" \
  --decode_from_file=$DECODE_FILE \
  --decode_to_file=$OUTPUT_FILE

