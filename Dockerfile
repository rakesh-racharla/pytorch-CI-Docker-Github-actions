FROM continuumio/anaconda3

COPY ./ /app
WORKDIR /app


# install requirements
RUN conda config --set restore_free_channel true
RUN conda create -n pytorchenv -f conda.yaml
RUN pip install -r requirements.txt

# running the application
CMD ["python", "main.py",]
#CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
