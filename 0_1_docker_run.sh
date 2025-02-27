docker run -d --name=megatron --rm=true --gpus=all --ipc=host --network=host \
    --workdir /root/Pai-Megatron-Patch/ \
    -v /root/.gitconfig:/root/.gitconfig \
    -v /mnt:/mnt \
    -v /nasmnt:/nasmnt \
    -v /root/Pai-Megatron-Patch/:/root/Pai-Megatron-Patch/ \
    dsw-registry.cn-wulanchabu.cr.aliyuncs.com/pai/pai-megatron-patch:25.01 /usr/bin/sleep infinity

# dsw-registry.cn-wulanchabu.cr.aliyuncs.com/pai/pai-megatron-patch:25.01

# for datascience-registry.cn-beijing.cr.aliyuncs.com/nvidia/pytorch:25.01-py3
# pip install setuptools==75.8.0
# pip install transformers==4.49.0 datasets==2.16.1 accelerate==0.27.0 evaluate==0.4.1 lm_eval==0.4.7
