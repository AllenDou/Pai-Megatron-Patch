cd /root/Pai-Megatron-Patch/LM-Evaluation-Harness-240310
accelerate launch --main_process_port 29051 -m lm_eval \
--model hf \
--model_args pretrained=/nasmnt/megatron/hf_model/,trust_remote_code=True \
--tasks cmmlu,ceval-valid  \
--batch_size 16
