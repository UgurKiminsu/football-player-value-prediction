#!/bin/bash

echo "Creating virtual environment..."
python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing core ML libraries..."
pip install \
    numpy \
    pandas \
    scikit-learn \
    matplotlib \
    seaborn \
    scipy \
    jupyterlab \
    ipykernel

echo "Saving requirements.txt..."
pip freeze > requirements.txt

echo ""
echo "ML environment setup complete!"
echo ""
echo "To activate later, run:"
echo "source venv/bin/activate"

