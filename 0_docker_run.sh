docker run -it \
    --gpus=all \
    --ipc=host \
    --network=host \
    --workdir /root/Pai-Megatron-Patch/ \
    -v /mnt:/mnt \
    -v /nasmnt:/nasmnt \
    -v /root/Pai-Megatron-Patch/:/root/Pai-Megatron-Patch/ \
    dsw-registry.cn-wulanchabu.cr.aliyuncs.com/pai/pai-megatron-patch:25.01
