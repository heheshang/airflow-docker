FROM apache/airflow:2.9.0
COPY requirements.txt /requirements.txt
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple 
RUN pip install --user --upgrade pip
RUN pip install --no-cache-dir --user -r /requirements.txt