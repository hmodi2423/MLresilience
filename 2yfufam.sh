#!/bin/bash
#SBATCH --job-name=2yfu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --account=janine_bijsterbosch
#SBATCH --partition=tier2_cpu
#SBATCH --time=23:55:00
#SBATCH --mem=8000
#SBATCH --output=2yfu_o_fam
#SBATCH --error=2yfu_e_fam
module load python
source activate hm_conda
######## Run the job ########
python ~/resilience/2yfu_fam.py -o ~/resilience/results.csv
