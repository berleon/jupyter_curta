#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 16
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --qos medium
#SBATCH --partition gpu
#SBATCH --time 1-12:00:00
#SBATCH --job-name jupyter-notebook
#SBATCH --output jupyter-notebook-%J.log

# ##SBATCH --nodelist g010
# get tunneling info
XDG_RUNTIME_DIR=""
node=$(hostname -s)
user=$(whoami)
cluster="curta"
port=8888

# print tunneling instructions jupyter-log
echo -e "
Command to create ssh tunnel:
ssh -N -f -L ${port}:${node}:${port} ${user}@${cluster}.zedat.fu-berlin.de

Use a Browser on your local machine to go to:
localhost:${port}  (prefix w/ https:// if using password)
"

# load modules or conda environments here
module load  CUDA
module load  Anaconda3

echo $PATH
source activate py36
echo $PATH

which jupyter-lab
conda info

jupyter labextension list
#jupyter labextension install jupyterlab_vim
#jupyter labextension list

# Run Jupyter
jupyter lab path
jupyter-lab --no-browser --port=${port} --ip=${node}
