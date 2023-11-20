#!/usr/bin/env bash
#SBATCH -A NAISS2023-5-108 -p alvis
#SBATCH -N 1 --gpus-per-node=A100:1
#SBATCH --time=00-00:10:00
#SBATCH --error=/cephyr/users/attilas/Alvis/out/%J_error.out
#SBATCH --output=/cephyr/users/attilas/Alvis/out/%J_output.out

module load CUDA/11.7.0
module load Python/3.9.6-GCCcore-11.2.0
source /cephyr/users/attilas/Alvis/nnunet/bin/activate

nnUNetv2_train 1 2d 0
wait