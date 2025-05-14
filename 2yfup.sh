#!/bin/bash
#SBATCH --job-name=part
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --account=janine_bijsterbosch
#SBATCH --partition=tier2_cpu
#SBATCH --time=6-23:00:00
#SBATCH --mem=8000
#SBATCH --output=brainout
#SBATCH --error=brainerr
module load python
source activate hm_conda
######## Run the job ########
python ~/resilience/ComBat.py -o ~/resilience/results.csv
