cd /root/Pai-Megatron-Patch/toolkits/model_checkpoints_convertor/qwen
bash hf2mcore_qwen2.5_convertor.sh \
0.5B \
/nasmnt/megatron/output_mcore_qwen2.5_pretrain/checkpoint/pretrain-mcore-qwen2.5-0.5B-lr-1e-5-minlr-1e-6-bs-1-gbs-8-seqlen-128-pr-bf16-tp-1-pp-1-cp-1-ac-false-do-true-sp-true-ti-9-wi-0/ \
/nasmnt/megatron/hf_model  \
1  \
1  \
bf16 \
true \
true \
/nasmnt/megatron/qwen-ckpts/Qwen2.5-0.5B
