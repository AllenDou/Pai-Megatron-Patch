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
false \
false   \
false \
100000  \
/nasmnt/megatron/qwen-datasets/wudao_qwenbpe_text_document   \
/nasmnt/megatron/qwen-datasets/wudao_qwenbpe_text_document   \
/nasmnt/megatron/qwen-ckpts/Qwen2.5-0.5B-hf-to-mcore-te-tp1-pp1  \
10000  \
100   \
/nasmnt/megatron/output_mcore_qwen2.5_pretrain
