#!/bin/sh

# V2Ray new configuration
mkdir /etc/mykin
touch /etc/mykin/config.json
cat <<-EOF > /etc/mykin/config.json
{
  "inbounds": [
  {
    "port": ${PORT},
    "protocol": "vmess",
    "settings": {
      "clients": [
        {
          "id": "${UUID}",
          "alterId": "${ALTER_ID}"
        }
      ]
    },
    "streamSettings": {
      "network": "ws",
      "wsSettings": {
        "path": "${mykin_PATH}"
      }
    }
  }
  ],
  "outbounds": [
  {
    "protocol": "freedom",
    "settings": {}
  }
  ]
}
EOF
