FROM rasa/rasa-sdk:1.5.2

USER root

RUN pip install --upgrade pip && \
    pip install SQLAlchemy~=1.3.3 && \
    pip install cx-Oracle==7.2.2

COPY ${PWD}/config.ini ./config.ini
COPY ${PWD}/dependencies.py ./dependencies.py
COPY ${PWD}/actions ./actions
COPY ${PWD}/services ./services
COPY ${PWD}/utils ./utils

USER 1001