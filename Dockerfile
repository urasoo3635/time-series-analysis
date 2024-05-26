# サンプルファイル docker/pytorch/Dockerfile.111
FROM python:3.10.14

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /work
RUN apt update && \
    apt install -y \
    wget \
    bzip2 \
    build-essential \
    git \
    git-lfs \
    curl \
    ca-certificates \
    libsndfile1-dev \
    libgl1 \
    python3-pip

COPY . /work


RUN pip3 install pandas numpy pymc seaborn matplotlib poetry statsmodels scikit-learn