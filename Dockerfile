FROM python:3.6-alpine

# Install the requirements
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# Change the working directory
WORKDIR /usr/src/app

# Copy over the code
COPY destructo ./destructo

# Run destructo
CMD ["python", "destructo/destructo.py"]