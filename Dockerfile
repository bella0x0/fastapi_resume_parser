FROM python:3.11

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY . .

CMD ["uvicorn", "app.main:app"]

# FROM public.ecr.aws/lambda/python:3.8

# # Install the function's dependencies using file requirements.txt
# # from your project folder.

# COPY requirements.txt  .
# RUN  pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

# # Copy function code
# COPY . ${LAMBDA_TASK_ROOT}

# # Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
# CMD [ "app.main.handler" ] 