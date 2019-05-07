#! /usr/bin/env bash

module load Anaconda3

conda create -n py36  \
            -c pytorch \
            -c conda-forge \
        python=3.6 \
        anaconda \
        opencv \
        pytorch \
        cuda100 \
        cudnn \
        numpy \
        torchvision \
        jupyter \
        jupyterlab \
        click \
        pandas \
        matplotlib \
        scipy \
        tqdm \
        scikit-learn \
        scikit-image \
        h5py \
        hdf5 \
        sympy \
        pymongo \
        pip \
        theano \
        tensorflow \
        keras \
        flake8 \
        pytest \
        pytest-arraydiff \
        pytest-flake8 \
        joblib \
        nodejs \
        zsh \
    && true

source activate py36

# comment out to have jupyter vim keys
# jupyter labextension install @jupyter-widgets/jupyterlab-manager
# jupyter labextension install jupyterlab_vim
