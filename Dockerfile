FROM python:3.11-bookworm

# 1. 声明一个构建参数，并给它一个默认的国内镜像源
ARG PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /app
WORKDIR /app

# 2. 在安装时使用这个参数
RUN pip install -r requirements.txt -i ${PIP_INDEX_URL}

CMD ["python", "app.py"]
