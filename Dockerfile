FROM tensorflow/tensorflow:2.2.3-py3-jupyter

RUN python3 -m pip install \
    scikit-learn \
    xgboost \
    requests \
    pandas \
    numpy

WORKDIR /app
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/app --ip 0.0.0.0 --no-browser --allow-root"]