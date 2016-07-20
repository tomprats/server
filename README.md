# Setup

    adduser {name}

### Postgres

    psql -U postgres -c "CREATE USER {name} WITH PASSWORD '{password}';"

Update ENV

    ENV["DATABASE_URL"] = postgresql://{name}:{password}@localhost/{name}

Create the database

    RAILS_ENV=production rails db:setup

### Assets

    RAILS_ENV=production rails assets:precompile

### Unicorn

    sudo cp /etc/init.d/unicorn_example /etc/init.d/unicorn_{name}
    sudo cp /etc/unicorn/config.rb /home/{name}/{name}/config/unicorn.rb

Update references of example to {name}

    sudo update-rc.d unicorn_{name} defaults
    sudo service unicorn_{name} start

### Nginx

### Redis

    sudo cp /etc/init.d/redis_6379 /etc/init.d/redis_{port}
    sudo cp /etc/redis/6379.conf /etc/redis/{port}.conf
    sudo mkdir /var/redis/{port}

Update references of 6379 to {port}

    sudo update-rc.d redis_{port} defaults
    sudo service redis_{port} start

http://redis.io/topics/quickstart

### Lets Encryot

# Update

    RAILS_ENV=production rails assets:precompile
    RAILS_ENV=production rails db:migrate
    service unicorn restart && service nginx reload

# Breakdown

    sudo userdel {name}
    sudo rm -rf /home/{name}
    sudo -u postgres dropuser {name}

# TODO

  - unicorn per app
  - nginx per app
  - different port per app config?
  - letsencrypt per app

# References

  - http://redis.io/topics/quickstart
  - https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-unicorn-and-nginx-on-ubuntu-14-04
