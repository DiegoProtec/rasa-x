FROM rasa/rasa:1.5.3-full

USER root

RUN pip install --upgrade pip && \
    pip install emoji==0.5.2 && \
    pip install psycopg2-binary==2.8.2 && \
    pip install unidecode==1.1.1 && \
    pip install websockets==8.1

USER 1001