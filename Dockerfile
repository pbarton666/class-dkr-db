# syntax=docker/dockerfile:1

# NB we have 3.9 installed in the pydocker env, but using 3.8 in Docker
# NB the parser directive in line 1 points to the latest docker
# NB because it's in line1, it's not treated as a comment.

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# --host=0.0.0.0 makes the app visible outside the container (runs on all addresses)
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]

