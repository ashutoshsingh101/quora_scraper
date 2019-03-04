WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt


# Make port 80 available to the world outside this container
EXPOSE 3000
EXPOSE 4444

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "q_mf.py"]