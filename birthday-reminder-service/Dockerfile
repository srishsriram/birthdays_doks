FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY packages/reminders/birthdays/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy full source code into the container
COPY . .

# Set the working directory to the actual app folder
WORKDIR /app/packages/reminders/birthdays

# Default command to run the app
EXPOSE 5000
CMD ["python", "__main__.py"]

