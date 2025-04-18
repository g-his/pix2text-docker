FROM zeroash/pix2text:latest

WORKDIR /app

RUN pip install litellm
EXPOSE 8503
CMD ["p2t", "serve", "-p", "8503", "-H", "0.0.0.0"]
