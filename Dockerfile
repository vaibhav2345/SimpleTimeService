FROM python:3.9-slim

# Create a non-root user
RUN useradd -ms /bin/bash appuser
USER appuser

# Set working directory
WORKDIR /app

# Copy application files
COPY --chown=appuser:appuser . .

# Install dependencies
RUN pip install flask

# Expose the application's port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

