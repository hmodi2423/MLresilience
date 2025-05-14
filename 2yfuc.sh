#!/bin/bash
#SBATCH --job-name=comp
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --account=janine_bijsterbosch
#SBATCH --partition=tier2_cpu
#SBATCH --time=23:55:00
#SBATCH --mem=8000
#SBATCH --output=2yfu_o_comp
#SBATCH --error=2yfu_e_comp
module load python
source activate hm_conda
######## Run the job ########
python ~/resilience/2yfu_comp.py -o ~/resilience/results.csv
