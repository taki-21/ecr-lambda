FROM public.ecr.aws/lambda/python:3.8

RUN pip3 install --upgrade pip
RUN pip3 install nltk
COPY app.py /var/task/
COPY init.py /tmp
RUN python3 /tmp/init.py

CMD [ "app.handler" ]
