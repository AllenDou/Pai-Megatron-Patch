
# install packages and link dataset dir to /workspace/ if necessary
pip install tokenizers==0.21
ln -sf /nasmnt/megatron/cmmlu /workspace/
ln -sf /nasmnt/megatron/ceval /workspace/
ln -sf /nasmnt/megatron/evaluate /workspace/

