cd /root/Pai-Megatron-Patch/examples/qwen2_5
sh run_mcore_qwen.sh  \
dsw  \
0.5B   \
1    \
8 \
1e-5   \
1e-6   \
128  \
128  \
bf16  \
1   \
1  \
1 \
true \
true   \
true \
true \
false   \
false \
100000  \
/nasmnt/megatron/qwen-datasets/path_to_your_dataset   \
/nasmnt/megatron/qwen-datasets/path_to_your_dataset   \
/nasmnt/megatron/output_mcore_qwen2.5_pretrain/checkpoint/pretrain-mcore-qwen2.5-0.5B-lr-1e-5-minlr-1e-6-bs-1-gbs-8-seqlen-128-pr-bf16-tp-1-pp-1-cp-1-ac-false-do-true-sp-true-ti-9-wi-0/ \
10000  \
100   \
/nasmnt/megatron/output_mcore_qwen2.5_finetune
