
#Run the application

sudo chmod -R 775 /home/ubuntu/cpp/myproj
#sudo chown ec2-user:ec2-user /home/ec2-user/cpp
#sudo chown ec2-user:ec2-user /home/ec2-user/cpp/*

cd /home/ubuntu/cpp
python3 -m venv venv
source /home/ubuntu/cpp/venv/bin/activate

cd /home/ubuntu/cpp/myproj
pip install -r requirements.txt

sudo chown ubuntu:ubuntu *

echo "Running the application"
python manage.py runserver 0.0.0.0:80 >> /dev/null 2>&1 &

