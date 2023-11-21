#!/usr/bin/env bash
#SBATCH -A NAISS2023-5-108 -p alvis
#SBATCH -N 1 --gpus-per-node=A100:1
#SBATCH --time=02-00:00:00
#SBATCH --mail-user=attila.simko@umu.se --mail-type=end
#SBATCH --error=/cephyr/users/attilas/Alvis/out/%J_error.out
#SBATCH --output=/cephyr/users/attilas/Alvis/out/%J_output.out

module load CUDA/11.7.0
module load Python/3.9.6-GCCcore-11.2.0
source /cephyr/users/attilas/Alvis/nnunet/bin/activate

nnUNetv2_train 1 2d 0 nnUNet_raw="/mimer/NOBACKUP/groups/naiss2023-6-64/nnUNet_raw" nnUNet_preprocessed="/mimer/NOBACKUP/groups/naiss2023-6-64/nnUNet_preprocessed" nnUNet_results="/mimer/NOBACKUP/groups/naiss2023-6-64/nnUNet_results"
wait