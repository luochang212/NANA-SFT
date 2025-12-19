# use `--loss_scale ignore_empty_think`
# Avoid losing the think capability by ignoring the loss of empty `<think>\n\n</think>\n\n`
# This method is also applicable to the Deepseek-R1 series of models.
CUDA_VISIBLE_DEVICES=6 \
swift sft \
    --model /mnt/data-2/qcnace/sft/nemo12b \
    --model_type mistral_nemo \
    --train_type lora \
    --dataset /home/qcnace/qc/nana/nana_sft.jsonl \
    --torch_dtype bfloat16 \
    --num_train_epochs 3 \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --learning_rate 1e-4 \
    --lora_rank 16 \
    --lora_alpha 32 \
    --lora_dropout 0.05 \
    --target_modules all-linear \
    --gradient_accumulation_steps 16 \
    --eval_steps 50 \
    --save_steps 50 \
    --save_total_limit 2 \
    --logging_steps 5 \
    --max_length 4096 \
    --output_dir output \
    --warmup_ratio 0.05 \
    --dataloader_num_workers 4 \
    --use_liger_kernel true \
    --load_from_cache_file false \
    --model_author swift \
    --model_name swift-robot



CUDA_VISIBLE_DEVICES=6 \
swift app \
    --ckpt_dir /home/qcnace/qc/ms-swift/examples/train/think_model/output/v3-20251219-114906/checkpoint-378 \
    --load_dataset_config true

