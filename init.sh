#!/bin/bash
ambari-server start
tail -f /var/log/ambari-server/ambari-server.log
