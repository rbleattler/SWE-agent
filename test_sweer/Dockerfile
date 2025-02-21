FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gnupg2 \
    chromium \
    chromium-driver \
    xvfb \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    fonts-liberation \
    libappindicator3-1 \
    libdrm2 \
    libgbm1 \
    libxcb-dri3-0 \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/tools/
COPY ./sweer /root/tools/sweer
RUN cd /root/tools/sweer && pip install -e .
RUN pip install webdriver-manager

# Set environment variables for Chrome
ENV CHROME_BIN=/usr/bin/chromium
ENV CHROMEDRIVER_PATH=/usr/bin/chromedriver
ENV SWEER_BASEURL=http://localhost:8009
