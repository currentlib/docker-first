FROM python:3.8.0-alpine3.10

RUN pip install flask

RUN printenv

WORKDIR /flask

COPY app.py .

COPY index.html ./templates/index.html

EXPOSE 5000

#RUN python app.py

EntryPOINT ["/usr/local/bin/python3"]

CMD ["app.py"]
