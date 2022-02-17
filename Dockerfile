FROM python:3.8.11-bullseye

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/src
WORKDIR /app/src

ADD . .

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN pip3 install numpy

RUN pip3 install -r requirements.txt

RUN wget -c http://images.cocodataset.org/annotations/annotations_trainval2017.zip

RUN unzip -o annotations_trainval2017.zip
