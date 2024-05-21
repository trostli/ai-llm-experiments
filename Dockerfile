FROM python:3.11
RUN useradd -m -u 1000 user
USER user
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH
WORKDIR /chainlit_week2
COPY --chown=user . $HOME/app
COPY . /
RUN pip install -r requirements.txt
RUN pip install dotenv
CMD ["chainlit", "run", "app.py", "--port", "7860"]