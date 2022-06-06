FROM jupyter/scipy-notebook

RUN mkdir models


COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt 

COPY train.csv ./train.csv
COPY test.csv ./test.csv
COPY IMDB Dataset.csv ./IMDB Dataset.csv

COPY train.py ./train.py


#RUN python3 train.py

