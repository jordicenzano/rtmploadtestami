# rtmploadtestdocker

#Create EC2 AMI
- Install: packer (www.packer.io)
- Clone the repository
- Copy ./secret/vars.json.example to ./secret/vars.json and fill out the values
- Run: `./create_rmtploadtest_worker_ami.sh`

#Description
- This script creates an EC2 AMI with all necessary tools to create RTMP test streams against any service that allows RTMP input (Brightcove, Youtube, Livestream, etc)

#Usage
- Create a EC2 machine using the AMI created with this project.
- Remember to allow inbound TCP traffic in port 80 (and maybe 22 too if you want to ssh the instance)
- Connect to the UI of this instance typing this URL in your browser: `http://INSTANCE_IP`
- TODO: Picture

#TODO list:
- TODO
