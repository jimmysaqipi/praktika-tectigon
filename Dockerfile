FROM python:latest
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt 
COPY python.py .
EXPOSE 8500
CMD ["python", "python.py"]
