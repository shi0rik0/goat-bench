# Record of how the environment was set up
conda install habitat-sim=0.2.3 -c conda-forge -c aihabitat -y

pip install -e .

# Install habitat-lab
git clone --branch v0.2.3 git@github.com:facebookresearch/habitat-lab.git
cd habitat-lab
pip install -e habitat-lab
pip install -e habitat-baselines
cd ..

pip install -r requirements.txt
pip install git+https://github.com/openai/CLIP.git
pip install git+https://github.com/shi0rik0/LAVIS.git

git clone  https://github.com/facebookresearch/eai-vc.git
cd eai-vc
pip install -e vc_models
cd ..

pip install opencv-python==4.8.0.74 "huggingface_hub<0.26.0"
