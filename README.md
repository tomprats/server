# Setup

    sudo -u postgres createuser -s app-tomify # Add Postgres User
    adduser app-tomify                        # Add Linux User

## Redis Setup

    sudo cp /etc/init.d/redis_6379 /etc/init.d/redis_{port}
    sudo cp /etc/redis/6379.conf /etc/redis/{port}.conf
    sudo mkdir /var/redis/{port}

Update references of 6379 to {port}

    sudo update-rc.d redis_{port} defaults
    sudo service redis_{port} start

http://redis.io/topics/quickstart

# Breakdown

    sudo -u postgres dropuser app-tomify
    sudo userdel app-tomify
    sudo rm -rf /home/app-tomify

# Update

    service unicorn restart && service nginx reload

# TODO

  - rvm
  - rails
  - unicorn
  - letsencrypt per app
  - postgres app config
  - nginx app config

# App Config

  - https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-unicorn-and-nginx-on-ubuntu-14-04

# References
