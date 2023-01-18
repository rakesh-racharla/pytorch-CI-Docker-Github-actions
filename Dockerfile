FROM continuumio/anaconda3

COPY ./ /app
WORKDIR /app


# install requirements
#RUN docker run -i -t /bin/bash -c conda config --set restore_free_channel true
#RUN /bin/bash conda activate pytorchenv
RUN docker run -i -t /bin/bash -c /bin/bash conda install -n pytorchenv -f conda.yaml
RUN pip install -r requirements.txt

# running the application
CMD ["python", "main.py",]
#CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
