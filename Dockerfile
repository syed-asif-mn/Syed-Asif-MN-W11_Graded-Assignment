FROM python:3.10
WORKDIR /breast_cancer_prediction
COPY requirements.txt /breast_cancer_prediction
EXPOSE 5000
RUN pip install virtualenv
ENV PATH="/venv/bin:$PATH"
RUN pip install --no-cache-dir -r ./requirements.txt
COPY . /breast_cancer_prediction
CMD ["python", "app.py"]