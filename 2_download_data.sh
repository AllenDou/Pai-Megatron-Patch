cd /nasmnt/megatron
mkdir -p qwen-ckpts
cd qwen-ckpts
wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/qwen-ckpts/Qwen2.5-0.5B.tar.gz
tar -zxf Qwen2.5-0.5B.tar.gz

cd /nasmnt/megatron
mkdir -p qwen-datasets
cd qwen-datasets
wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/qwen-datasets/wudao_qwenbpe_text_document.bin
wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/qwen-datasets/wudao_qwenbpe_text_document.idx

# json微调数据集
wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/deepseek-datasets/alpaca_zh-train-general.json
wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/deepseek-datasets/alpaca_zh-valid-general.json

# In container
cd /nasmnt/megatron

wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/evaluation-datasets/evaluate.tgz
wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/evaluation-datasets/cmmlu.tgz
wget https://atp-modelzoo-wlcb-pai.oss-cn-wulanchabu.aliyuncs.com/release/models/pai-megatron-patch/evaluation-datasets/ceval.tgz

tar -xvzf cmmlu.tgz
tar -xvzf ceval.tgz
tar -xvzf evaluate.tgz

ln -s /nasmnt/megatron/cmmlu /workspace/
ln -s /nasmnt/megatron/ceval /workspace/
ln -s /nasmnt/megatron/evaluate /workspace/

#cd /workspace/
#wget http://easynlp-dev.oss-cn-zhangjiakou.aliyuncs.com/225247/Pai-Megatron-Patch/code/evaluate.tgz
#tar -zxvf evaluate.tgz
