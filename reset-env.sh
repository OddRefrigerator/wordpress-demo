#!/bin/bash
podman pod stop wordpress-demo
podman pod rm wordpress-demo
rm -rf /srv/containers/mysql/*
rm -rf /srv/containers/wordpress/*
rm /srv/containers/wordpress/.htaccess
rm /srv/containers/mysql/ib_buffer_pool