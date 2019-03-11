# https://www.elastic.co/guide/en/elasticsearch/reference/current/deb.html

# elasticsearch requires java-8 or later
sudo apt-get install openjdk-8-jdk
java -version

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
sudo apt-get update && sudo apt-get install elasticsearch

sudo service elasticsearch start
sudo service elasticsearch status

# get request to check if elastic search is running or not
# curl -X GET "0.0.0.0:9200/"
# to edit the configuration
# sudo nano /etc/elasticsearch/elasticsearch.yml
