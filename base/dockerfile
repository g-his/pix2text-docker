FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir pix2text[serve]
RUN pip install litellm
EXPOSE 8503
CMD ["p2t", "serve", "-p", "8503", "-H", "0.0.0.0"]
