FROM pytorch/pytorch:2.8.0-cuda12.8-cudnn9-runtime

RUN pip install --no-cache-dir \
    jupyterlab \
    "tornado==6.4.2" \
    numpy \
    pandas \
    matplotlib \
    scikit-learn \
    seaborn

WORKDIR /workspace

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]