FROM python:3
WORKDIR /docker
RUN pip install flask
COPY requirements.txt .
RUN pip freeze >requirements.txt
COPY . .
EXPOSE 5000
CMD ["python3", "app.py"]
