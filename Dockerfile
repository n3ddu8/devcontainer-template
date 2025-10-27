FROM mcr.microsoft.com/devcontainers/python:3-bookworm

RUN apt update && apt install -y openjdk-17-jdk

ENV SPARK_VERSION=4.0.1
RUN curl -fsSL https://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop3.tgz -o spark.tgz \
    && tar -xzf spark.tgz -C /opt/ \
    && rm spark.tgz \
    && mv /opt/spark-* /opt/spark \

    && curl -sSL -O https://packages.microsoft.com/config/debian/$(grep VERSION_ID /etc/os-release | cut -d '"' -f 2 | cut -d '.' -f 1)/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb \
    && apt update \
    && ACCEPT_EULA=Y apt-get install -y msodbcsql18 \
    && ACCEPT_EULA=Y apt-get install -y mssql-tools18 \
    && apt-get install -y unixodbc-dev

WORKDIR /opt/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]

