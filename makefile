all: 
	clear 
	# CUDA_VISIBLE_DEVICES=0 python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=0 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=100 use_cuda=False 
	
gather-casec-runs-cpu: 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=4 use_cuda=False 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=5 use_cuda=False 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=6 use_cuda=False 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=7 use_cuda=False 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=8 use_cuda=False 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=9 use_cuda=False 
	python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=10 use_cuda=False 

gather-casec-runs: 
	# CUDA_VISIBLE_DEVICES=0 python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=0 & 
	# CUDA_VISIBLE_DEVICES=1 python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=1 & 
	# CUDA_VISIBLE_DEVICES=2 python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=2 & 
	# CUDA_VISIBLE_DEVICES=3 python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed=3 & 