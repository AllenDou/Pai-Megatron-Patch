cd /root/Pai-Megatron-Patch/toolkits/model_checkpoints_convertor/qwen
bash hf2mcore_qwen2.5_convertor.sh \
0.5B \
/nasmnt/megatron/qwen-ckpts/Qwen2.5-0.5B \
/nasmnt/megatron/qwen-ckpts/Qwen2.5-0.5B-hf-to-mcore-te-tp1-pp1  \
1  \
1  \
bf16 \
true \
false 
