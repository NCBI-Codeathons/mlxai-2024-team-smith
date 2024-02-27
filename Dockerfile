FROM python:3.11-slim


ENV PIP_ROOT_USER_ACTION=ignore
WORKDIR /usr/src
RUN apt-get update -y
RUN apt-get install git gcc python3-dev openjdk-17-jdk zstd texlive-xetex texlive-fonts-recommended texlive-plain-generic pandoc wget procps libgdal-dev -y

RUN pip install --upgrade pip
RUN pip install wheel setuptools build
RUN pip install ipython matplotlib seaborn scikit-learn pandas polars numpy pyspark cuallee pyarrow fastparquet deltalake jupyterlab ipywidgets statsmodels delta-spark imbalanced-learn fpdf2 spark-nlp pychalk sqlglot networkx plotly inflection humanize pikepdf adtk
RUN pip install xgboost jupysql rustworkx
RUN pip install qrcode fastavro avro
RUN pip install duckdb
RUN pip install duckdb-engine
RUN pip install ablang2
RUN pip install jupyterlab-fasta
RUN pip install s3fs
RUN pip install pyhmmer
RUN pip install openmm biopython hmmer
RUN rm -rf /home/root/.cache

RUN mkdir -p /downloads
RUN wget https://ftp.ncbi.nih.gov/blast/executables/igblast/release/LATEST/ncbi-igblast-1.22.0-x64-linux.tar.gz -P /downloads
RUN cd /downloads && tar -zxvf ncbi-igblast-1.22.0-x64-linux.tar.gz
ENV PATH="$PATH:/downloads/ncbi-igblast-1.22.0/bin"
RUN echo $PATH

RUN mkdir -p /databases/airr
RUN wget https://ftp.ncbi.nih.gov/blast/executables/igblast/release/database/airr/airr_c_human.tar -P /databases/airr
RUN wget https://ftp.ncbi.nih.gov/blast/executables/igblast/release/database/airr/airr_c_mouse.tar -P /databases/airr
RUN wget https://ftp.ncbi.nih.gov/blast/executables/igblast/release/database/mouse_gl_VDJ.tar -P /databases/airr
RUN wget https://ftp.ncbi.nih.gov/blast/executables/igblast/release/database/ncbi_human_c_genes.tar -P /databases/airr
RUN wget https://ftp.ncbi.nih.gov/blast/executables/igblast/release/database/rhesus_monkey_VJ.tar -P /databases/airr

EXPOSE 8888

CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--allow-root", "--NotebookApp.token=password"]