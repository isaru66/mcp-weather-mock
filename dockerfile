FROM python:3.13.2-slim

WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install with longer timeout for cross-platform builds
RUN pip install --timeout=300 --retries=5 -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]