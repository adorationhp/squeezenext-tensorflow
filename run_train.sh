#!/usr/bin/env bash
DATE=`date '+%Y-%m-%d_%H-%M'`
TRAIN_PATH="/usr/local/share/models/"
TRAIN_DIR=$TRAIN_PATH$DATE
TRAIN_DIR="/usr/local/share/models/2018-07-12_13-42/"
PYTHONPATH="./" python train.py \
--model_dir $TRAIN_DIR \
--batch_size 256 \
--num_epochs 30 \
--training_file_pattern "/usr/local/share/Datasets/Imagenet/train-*" \
--validation_file_pattern "/usr/local/share/Datasets/Imagenet/validation-*"