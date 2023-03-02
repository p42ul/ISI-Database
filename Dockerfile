FROM python:3-alpine
RUN apk update
RUN apk add automake make g++ gcc git subversion python3-dev
RUN git clone "https://github.com/valerianF/ISI-Database"
WORKDIR /ISI-Database
RUN pip install -r requirements.txt
EXPOSE 8050
CMD ["python", "app.py"]
