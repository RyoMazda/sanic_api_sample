FROM python:3.6

ENV WORKDIR /sanic
WORKDIR ${WORKDIR}

# pip install
COPY requirements.txt ${WORKDIR}/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# codeをimageに入れて
COPY . ${WORKDIR}/

EXPOSE 8000

CMD python main.py
