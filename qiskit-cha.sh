# setting python3 as your main python
cd
echo "alias python=python3" >> ~/.bashrc
source ~/.bashrc

# install python 3.7 on your system
sudo apt-get install python3.7-dev python3.7-venv python3-all-dev python3-pip

# setting pip to be point at python 3
sudo -H pip3 install pip

sudo -H pip install virtualenv virtualenvwrapper

# setup bashrc file for virtual environments

echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# creating virtual environment for qiskit challenge

mkvirtualenv -p37 qis-ch

# install python packages
pip install numpy cython

pip install seaborn pillow jupyter notebook 

pip install -I git+https://github.com/qiskit-community/may4_challenge.git@0.4.30

pip install qiskit


