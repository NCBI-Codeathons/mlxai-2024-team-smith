FROM python:3.11-slim


ENV PIP_ROOT_USER_ACTION=ignore
WORKDIR /usr/src
RUN apt-get update -y
RUN apt-get install gcc python3-dev openjdk-17-jdk zstd texlive-xetex texlive-fonts-recommended texlive-plain-generic pandoc wget procps libgdal-dev -y

RUN python -m venv .venv
RUN pip install --upgrade pip
RUN pip install wheel setuptools
RUN pip install ipython matplotlib seaborn scikit-learn pandas polars numpy pyspark cuallee pyarrow fastparquet deltalake jupyterlab ipywidgets statsmodels delta-spark imbalanced-learn fpdf2 spark-nlp pychalk sqlglot networkx plotly inflection humanize pikepdf adtk
RUN pip install xgboost pendulum jupysql nbconvert[webpdf] jupyterlab_horizon_theme jupyterlab_templates catppuccin-jupyterlab toml nltk rustworkx geopy folium svgutils geopandas geodatasets
RUN pip install qrcode fastavro avro
RUN pip install duckdb
RUN pip install duckdb-engine
RUN rm -rf /home/root/.cache


EXPOSE 8888

CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--allow-root", "--NotebookApp.token=password"]