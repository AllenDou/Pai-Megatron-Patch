docker run -it \
    --gpus=all \
    --ipc=host \
    --network=host \
    --workdir /root/Pai-Megatron-Patch/ \
    -v /mnt:/mnt \
    -v /nasmnt:/nasmnt \
    -v /root/Pai-Megatron-Patch_allendou/:/root/Pai-Megatron-Patch/ \
    nvcr.io/nvidia/pytorch:25.01-py3

# dsw-registry.cn-wulanchabu.cr.aliyuncs.com/pai/pai-megatron-patch:25.01
# for nvcr.io/nvidia/pytorch:25.01-py3
pip install setuptools==75.8.0
pip install transformers==4.49.0 datasets==2.16.1 accelerate==0.27.0 evaluate==0.4.1 lm_eval==0.4.7
