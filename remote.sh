#!/usr/bin/env bash
#SBATCH -A NAISS2023-5-108 -p alvis
#SBATCH -N 1 --gpus-per-node=A100:1
#SBATCH --time=00-00:10:00
#SBATCH --mail-user=attila.simko@umu.se --mail-type=end
#SBATCH --error=/cephyr/users/attilas/Alvis/out/%J_error.out
#SBATCH --output=/cephyr/users/attilas/Alvis/out/%J_output.out

module load TensorFlow/2.11.0-foss-2022a-CUDA-11.7.0
source /cephyr/users/attilas/Alvis/venv/bin/activate

nnUNetv2_train 1 2d 0
wait