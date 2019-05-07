# Scripts to run jupyter notebook on curta

The zedat curta system is managed using [slurm](https://slurm.schedmd.com/documentation.html).
Here is the procedure to get a jupyter notebook running:

1. Get an account on curta: https://ssl2.cms.fu-berlin.de/fu-berlin/sites/high-performance-computing/PM_Zugang-beantragen/index.html
and wait until they send you a confirmation email.
2. connect to curta via ssh and your password: `$ ssh <zedat_username>@curta.zedat.fu-berlin.de`
3. Recommended: add your public ssh key to `~/.ssh/authorized_keys` such that
   you can connect to curta without password.
4. install a python enviroment by running: `$ ~/setup_conda.sh`
5. now you are ready to submit a job: `$ sbatch run_jupyter.sh`.
You can edit `run_jupyter.sh` if you need more cpus, memory, gpus or time.
The output of the job is saved to `jupyter-notebook-<jobid>.log`. The security
token of your notebook is also stored there.
6. inspect your job with `$ squeue | grep gpu`. This will show the jobid and
   where the job is running. You can connect to the node with `ssh g0XX`.
7. once you are done, cancel your job with `$ scancel <jobid>`.
