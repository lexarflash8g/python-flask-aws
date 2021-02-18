setup:
	python3 -m venv ~/.flaskapp
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	#some code
lint:
	hadolint Dockerfile
	pylint --disabe=R,C,W1203 app.py
all: install lint test
