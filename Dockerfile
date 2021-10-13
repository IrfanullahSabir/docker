FROM python:3.9.7-buster

# Our application directory
WORKDIR /app

# Dependencies
COPY dependencies.txt .

RUN pip install -r dependencies.txt

# Copy source code
COPY /app .

# Run the application
CMD ["python", "index.py"]