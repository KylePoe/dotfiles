NOW=$(date "+%Y-%m-%d")
CONDA_BASE=$(conda info --base)
CONDA_FUNCTION="etc/profile.d/conda.sh"
CONDA="$CONDA_BASE/$CONDA_FUNCTION"
source $CONDA

mkdir ~/.dotfiles/conda/environment-backups/$NOW

ENVS=$(conda env list | grep '^\w' | cut -d' ' -f1)
for env in $ENVS; do
    conda activate "$env"
    conda env export > ~/.dotfiles/conda/environment-backups/$NOW/"$env".yml
    echo "Exporting $env"
done

