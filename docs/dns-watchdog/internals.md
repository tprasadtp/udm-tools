
## Internals

-  GET WAN configuraion from `/proxy/network/v2/api/site/default/wan/enriched-configuration`

    ```json
    [
    {
        "configuration": {
        "_id": "61abfc32cb90b105f408287e",
        "attr_hidden_id": "WAN",
        "attr_no_delete": true,
        "mac_override_enabled": false,
        "name": "WAN",
        "purpose": "wan",
        "report_wan_event": false,
        "wan_dhcp_options": [],
        "wan_dns1": "1.1.1.1",
        "wan_dns2": "8.8.8.8",
        "wan_ip_aliases": [],
        "wan_load_balance_type": "failover-only",
        "wan_load_balance_weight": 50,
        "wan_networkgroup": "WAN",
        "wan_provider_capabilities": {
            "download_kilobits_per_second": 10000,
            "upload_kilobits_per_second": 1000
        },
        "wan_smartq_enabled": false,
        "wan_type": "dhcp",
        "wan_type_v6": "disabled",
        "wan_vlan_enabled": false
        },
        "details": {
        "creation_timestamp": 1638661170,
        "service_provider": {
            "city": "XXXX",
            "name": "XXXX"
        }
        },
        "statistics": {
        "peak_usage": {
            "download_percentage": 5.7896106666666665,
            "upload_percentage": 6.642082666666665
        },
        "uptime_percentage": 100
        }
    }
    ]
    ```


1. GET LAN `/proxy/network/v2/api/site/default/lan/enriched-configuration`

```json
[
  {
    "configuration": {
      "_id": "61abfc32cb90b105f408287f",
      "attr_no_delete": true,
      "attr_hidden_id": "LAN",
      "name": "Unbound - Untagged",
      "site_id": "61abfc2bcb90b105f408286d",
      "vlan_enabled": false,
      "purpose": "corporate",
      "ip_subnet": "192.168.5.1/24",
      "ipv6_interface_type": "none",
      "domain_name": "unbound.lan.prasadt.com",
      "is_nat": true,
      "dhcpd_enabled": true,
      "dhcpd_start": "192.168.5.1",
      "dhcpd_stop": "192.168.5.254",
      "dhcpdv6_enabled": false,
      "ipv6_ra_enabled": false,
      "lte_lan_enabled": true,
      "auto_scale_enabled": false,
      "networkgroup": "LAN",
      "enabled": true,
      "igmp_snooping": false,
      "dhcp_relay_enabled": false,
      "dhcpd_dns_enabled": false,
      "dhcpd_leasetime": 86400,
      "dhcpd_gateway_enabled": false,
      "dhcpd_unifi_controller": "",
      "dhcpguard_enabled": false,
      "dhcpd_ntp_enabled": false,
      "dhcpd_boot_enabled": false,
      "dhcpd_time_offset_enabled": false,
      "dhcpd_wpad_url": "",
      "dhcpd_tftp_server": "",
      "gateway_type": "default",
      "gateway_device": "68:d7:9a:5b:1d:55",
      "ipv6_pd_start": "::2",
      "ipv6_pd_stop": "::7d1",
      "nat_outbound_ip_addresses": []
    },
    "details": {
      "creation_timestamp": 1638661170,
      "gateway_interface_name": "br0",
      "gateway_mac": "68:d7:9a:5b:1d:55"
    },
    "statistics": {
      "dhcp_active_leases": 0,
      "dhcp_max_leases": 253
    }
  },
  {
    "configuration": {
      "_id": "61c687fbf54378046deee6fd",
      "name": "Bhoomi - Default VLAN",
      "enabled": true,
      "networkgroup": "LAN",
      "purpose": "corporate",
      "vlan_enabled": true,
      "vlan": 22,
      "domain_name": "core.lan.prasadt.com",
      "igmp_snooping": false,
      "auto_scale_enabled": false,
      "dhcpd_start": "10.22.22.100",
      "dhcpd_stop": "10.22.22.254",
      "ip_subnet": "10.22.22.1/24",
      "dhcp_relay_enabled": false,
      "dhcpd_enabled": true,
      "dhcpd_dns_enabled": false,
      "dhcpd_leasetime": 1800,
      "dhcpd_gateway_enabled": false,
      "dhcpd_unifi_controller": "",
      "dhcpguard_enabled": false,
      "dhcpd_ntp_enabled": false,
      "dhcpd_boot_enabled": false,
      "dhcpd_time_offset_enabled": false,
      "dhcpd_wpad_url": "",
      "dhcpd_tftp_server": "",
      "lte_lan_enabled": false,
      "ipv6_interface_type": "none",
      "dhcpd_user_option_61abfea2cb90b105f40828a9": "core.lan.prasadt.com,lan.prasadt.com",
      "site_id": "61abfc2bcb90b105f408286d",
      "ipv6_pd_start": "::2",
      "ipv6_pd_stop": "::7d1",
      "gateway_type": "default",
      "nat_outbound_ip_addresses": [],
      "is_nat": true
    },
    "details": {
      "creation_timestamp": 1640400891,
      "gateway_interface_name": "br22",
      "gateway_mac": "68:d7:9a:5b:1d:55"
    },
    "statistics": {
      "dhcp_active_leases": 2,
      "dhcp_max_leases": 154
    }
  },
  {
    "configuration": {
      "_id": "61c68bf7f54378046deee72b",
      "name": "Luna - Servers VLAN",
      "enabled": true,
      "networkgroup": "LAN",
      "purpose": "corporate",
      "vlan_enabled": true,
      "vlan": 33,
      "domain_name": "luna.lan.prasadt.com",
      "igmp_snooping": false,
      "auto_scale_enabled": false,
      "dhcpd_start": "10.33.33.30",
      "dhcpd_stop": "10.33.33.254",
      "ip_subnet": "10.33.33.1/24",
      "dhcp_relay_enabled": false,
      "dhcpd_enabled": true,
      "dhcpd_dns_enabled": true,
      "dhcpd_leasetime": 1800,
      "dhcpd_gateway_enabled": false,
      "dhcpd_unifi_controller": "",
      "dhcpguard_enabled": true,
      "dhcpd_ip_1": "10.33.33.1",
      "dhcpd_ip_2": "",
      "dhcpd_ip_3": "",
      "dhcpd_ntp_enabled": false,
      "dhcpd_boot_enabled": false,
      "dhcpd_time_offset_enabled": false,
      "dhcpd_wpad_url": "",
      "dhcpd_tftp_server": "",
      "lte_lan_enabled": false,
      "ipv6_interface_type": "none",
      "dhcpd_user_option_61abfea2cb90b105f40828a9": "compute.lan.prasadt.com,lan.prasadt.com",
      "site_id": "61abfc2bcb90b105f408286d",
      "ipv6_pd_start": "::2",
      "ipv6_pd_stop": "::7d1",
      "gateway_type": "default",
      "nat_outbound_ip_addresses": [],
      "is_nat": true,
      "gateway_device": "68:d7:9a:5b:1d:55",
      "ipv6_ra_enabled": true,
      "upnp_lan_enabled": false,
      "teleport_enabled": false,
      "vpn_combined_enabled": false,
      "dhcpd_dns_1": "1.1.1.3",
      "dhcpd_dns_2": "8.8.8.8"
    },
    "details": {
      "creation_timestamp": 1640401911,
      "gateway_interface_name": "br33",
      "gateway_mac": "68:d7:9a:5b:1d:55"
    },
    "statistics": {
      "dhcp_active_leases": 0,
      "dhcp_max_leases": 224
    }
  }
]
```


1. GET `/proxy/network/api/s/default/rest/networkconf`

```json
{
  "meta": {
    "rc": "ok"
  },
  "data": [
    {
      "_id": "61abfc32cb90b105f408287e",
      "attr_no_delete": true,
      "attr_hidden_id": "WAN",
      "wan_networkgroup": "WAN",
      "site_id": "61abfc2bcb90b105f408286d",
      "purpose": "wan",
      "name": "WAN",
      "wan_type": "dhcp",
      "wan_provider_capabilities": {
        "upload_kilobits_per_second": 1000,
        "download_kilobits_per_second": 10000
      },
      "report_wan_event": false,
      "wan_type_v6": "disabled",
      "wan_load_balance_type": "failover-only",
      "wan_load_balance_weight": 50,
      "wan_vlan_enabled": false,
      "wan_vlan": "",
      "wan_egress_qos": "",
      "wan_dns1": "1.1.1.3",
      "wan_dns2": "8.8.8.8",
      "wan_smartq_enabled": false,
      "mac_override_enabled": false,
      "wan_dhcp_options": [],
      "wan_ip_aliases": []
    },
    {
      "_id": "61abfc32cb90b105f408287f",
      "attr_no_delete": true,
      "attr_hidden_id": "LAN",
      "name": "Unbound - Untagged",
      "site_id": "61abfc2bcb90b105f408286d",
      "vlan_enabled": false,
      "purpose": "corporate",
      "ip_subnet": "192.168.5.1/24",
      "ipv6_interface_type": "none",
      "domain_name": "unbound.lan.prasadt.com",
      "is_nat": true,
      "dhcpd_enabled": true,
      "dhcpd_start": "192.168.5.1",
      "dhcpd_stop": "192.168.5.254",
      "dhcpdv6_enabled": false,
      "ipv6_ra_enabled": false,
      "lte_lan_enabled": true,
      "auto_scale_enabled": false,
      "networkgroup": "LAN",
      "enabled": true,
      "igmp_snooping": false,
      "dhcp_relay_enabled": false,
      "dhcpd_dns_enabled": false,
      "dhcpd_leasetime": 86400,
      "dhcpd_gateway_enabled": false,
      "dhcpd_unifi_controller": "",
      "dhcpguard_enabled": false,
      "dhcpd_ntp_enabled": false,
      "dhcpd_boot_enabled": false,
      "dhcpd_time_offset_enabled": false,
      "dhcpd_wpad_url": "",
      "dhcpd_tftp_server": "",
      "gateway_type": "default",
      "gateway_device": "68:d7:9a:5b:1d:55",
      "ipv6_pd_start": "::2",
      "ipv6_pd_stop": "::7d1",
      "nat_outbound_ip_addresses": []
    },
    {
      "_id": "61c687fbf54378046deee6fd",
      "name": "Bhoomi - Default VLAN",
      "enabled": true,
      "networkgroup": "LAN",
      "purpose": "corporate",
      "vlan_enabled": true,
      "vlan": 22,
      "domain_name": "core.lan.prasadt.com",
      "igmp_snooping": false,
      "auto_scale_enabled": false,
      "dhcpd_start": "10.22.22.100",
      "dhcpd_stop": "10.22.22.254",
      "ip_subnet": "10.22.22.1/24",
      "dhcp_relay_enabled": false,
      "dhcpd_enabled": true,
      "dhcpd_dns_enabled": false,
      "dhcpd_leasetime": 1800,
      "dhcpd_gateway_enabled": false,
      "dhcpd_unifi_controller": "",
      "dhcpguard_enabled": false,
      "dhcpd_ntp_enabled": false,
      "dhcpd_boot_enabled": false,
      "dhcpd_time_offset_enabled": false,
      "dhcpd_wpad_url": "",
      "dhcpd_tftp_server": "",
      "lte_lan_enabled": false,
      "ipv6_interface_type": "none",
      "dhcpd_user_option_61abfea2cb90b105f40828a9": "core.lan.prasadt.com,lan.prasadt.com",
      "site_id": "61abfc2bcb90b105f408286d",
      "ipv6_pd_start": "::2",
      "ipv6_pd_stop": "::7d1",
      "gateway_type": "default",
      "nat_outbound_ip_addresses": [],
      "is_nat": true
    },
    {
      "_id": "61c68bf7f54378046deee72b",
      "name": "Luna - Servers VLAN",
      "enabled": true,
      "networkgroup": "LAN",
      "purpose": "corporate",
      "vlan_enabled": true,
      "vlan": 33,
      "domain_name": "luna.lan.prasadt.com",
      "igmp_snooping": false,
      "auto_scale_enabled": false,
      "dhcpd_start": "10.33.33.30",
      "dhcpd_stop": "10.33.33.254",
      "ip_subnet": "10.33.33.1/24",
      "dhcp_relay_enabled": false,
      "dhcpd_enabled": true,
      "dhcpd_dns_enabled": false,
      "dhcpd_leasetime": 1800,
      "dhcpd_gateway_enabled": false,
      "dhcpd_unifi_controller": "",
      "dhcpguard_enabled": true,
      "dhcpd_ip_1": "10.33.33.1",
      "dhcpd_ip_2": "",
      "dhcpd_ip_3": "",
      "dhcpd_ntp_enabled": false,
      "dhcpd_boot_enabled": false,
      "dhcpd_time_offset_enabled": false,
      "dhcpd_wpad_url": "",
      "dhcpd_tftp_server": "",
      "lte_lan_enabled": false,
      "ipv6_interface_type": "none",
      "dhcpd_user_option_61abfea2cb90b105f40828a9": "compute.lan.prasadt.com,lan.prasadt.com",
      "site_id": "61abfc2bcb90b105f408286d",
      "ipv6_pd_start": "::2",
      "ipv6_pd_stop": "::7d1",
      "gateway_type": "default",
      "nat_outbound_ip_addresses": [],
      "is_nat": true,
      "gateway_device": "68:d7:9a:5b:1d:55",
      "ipv6_ra_enabled": true,
      "upnp_lan_enabled": false,
      "teleport_enabled": false,
      "vpn_combined_enabled": false,
      "dhcpd_dns_1": "1.1.1.3",
      "dhcpd_dns_2": "1.0.0.3"
    }
  ]
}
```

1. Set WAN DNS via POST `/proxy/network/api/s/default/rest/networkconf/61abfc32cb90b105f408287e`

- Payload

    ```json
    {
    "name": "WAN",
    "purpose": "wan",
    "report_wan_event": false,
    "wan_networkgroup": "WAN",
    "wan_type": "dhcp",
    "wan_type_v6": "disabled",
    "wan_load_balance_type": "failover-only",
    "wan_load_balance_weight": 50,
    "wan_vlan_enabled": false,
    "wan_vlan": "",
    "wan_egress_qos": "",
    "wan_dns1": "1.1.1.3",
    "wan_dns2": "1.0.0.3",
    "wan_smartq_enabled": false,
    "_id": "61abfc32cb90b105f408287e",
    "attr_no_delete": true,
    "attr_hidden_id": "WAN",
    "site_id": "61abfc2bcb90b105f408286d",
    "wan_provider_capabilities": {
        "upload_kilobits_per_second": 1000,
        "download_kilobits_per_second": 10000
    },
    "mac_override_enabled": false,
    "wan_dhcp_options": [],
    "wan_ip_aliases": []
    }
    ```

- Response

```json
{"meta":{"rc":"ok"},"data":[{"_id":"61abfc32cb90b105f408287e","attr_no_delete":true,"attr_hidden_id":"WAN","wan_networkgroup":"WAN","site_id":"61abfc2bcb90b105f408286d","purpose":"wan","name":"WAN","wan_type":"dhcp","wan_provider_capabilities":{"upload_kilobits_per_second":1000,"download_kilobits_per_second":10000},"report_wan_event":false,"wan_type_v6":"disabled","wan_load_balance_type":"failover-only","wan_load_balance_weight":50,"wan_vlan_enabled":false,"wan_vlan":"","wan_egress_qos":"","wan_dns1":"1.1.1.3","wan_dns2":"1.0.0.3","wan_smartq_enabled":false,"mac_override_enabled":false,"wan_dhcp_options":[],"wan_ip_aliases":[]}]}
```

1. Set LAN DNS via DHCP Options PUT `/proxy/network/api/s/default/rest/networkconf/61c68bf7f54378046deee72b`

- Payload
```json
{
  "auto_scale_enabled": false,
  "dhcp_relay_enabled": false,
  "dhcpd_boot_enabled": false,
  "dhcpd_dns_enabled": true,
  "dhcpd_enabled": true,
  "dhcpd_gateway_enabled": false,
  "dhcpd_leasetime": 1800,
  "dhcpd_ntp_enabled": false,
  "dhcpd_start": "10.33.33.30",
  "dhcpd_stop": "10.33.33.254",
  "dhcpd_tftp_server": "",
  "dhcpd_time_offset_enabled": false,
  "dhcpd_unifi_controller": "",
  "dhcpguard_enabled": true,
  "dhcpd_wpad_url": "",
  "domain_name": "luna.lan.prasadt.com",
  "enabled": true,
  "igmp_snooping": false,
  "ip_subnet": "10.33.33.1/24",
  "ipv6_interface_type": "none",
  "ipv6_ra_enabled": true,
  "lte_lan_enabled": false,
  "name": "Luna - Servers VLAN",
  "networkgroup": "LAN",
  "upnp_lan_enabled": false,
  "vlan": 33,
  "vlan_enabled": true,
  "purpose": "corporate",
  "teleport_enabled": false,
  "_id": "61c68bf7f54378046deee72b",
  "dhcpd_ip_1": "10.33.33.1",
  "dhcpd_ip_2": "",
  "dhcpd_ip_3": "",
  "dhcpd_user_option_61abfea2cb90b105f40828a9": "compute.lan.prasadt.com,lan.prasadt.com",
  "gateway_type": "default",
  "vpn_combined_enabled": false,
  "dhcpd_dns_1": "1.1.1.3",
  "dhcpd_dns_2": "1.0.0.3",
  "radiusServerSecret": "8QbuYO/l6f2yQij1FRxReRiPoKWKKEBN"
}
```

Response

```json
{
  "meta": {
    "rc": "ok"
  },
  "data": [
    {
      "_id": "61c68bf7f54378046deee72b",
      "name": "Luna - Servers VLAN",
      "enabled": true,
      "networkgroup": "LAN",
      "purpose": "corporate",
      "vlan_enabled": true,
      "vlan": 33,
      "domain_name": "luna.lan.prasadt.com",
      "igmp_snooping": false,
      "auto_scale_enabled": false,
      "dhcpd_start": "10.33.33.30",
      "dhcpd_stop": "10.33.33.254",
      "ip_subnet": "10.33.33.1/24",
      "dhcp_relay_enabled": false,
      "dhcpd_enabled": true,
      "dhcpd_dns_enabled": true,
      "dhcpd_leasetime": 1800,
      "dhcpd_gateway_enabled": false,
      "dhcpd_unifi_controller": "",
      "dhcpguard_enabled": true,
      "dhcpd_ip_1": "10.33.33.1",
      "dhcpd_ip_2": "",
      "dhcpd_ip_3": "",
      "dhcpd_ntp_enabled": false,
      "dhcpd_boot_enabled": false,
      "dhcpd_time_offset_enabled": false,
      "dhcpd_wpad_url": "",
      "dhcpd_tftp_server": "",
      "lte_lan_enabled": false,
      "ipv6_interface_type": "none",
      "dhcpd_user_option_61abfea2cb90b105f40828a9": "compute.lan.prasadt.com,lan.prasadt.com",
      "site_id": "61abfc2bcb90b105f408286d",
      "ipv6_pd_start": "::2",
      "ipv6_pd_stop": "::7d1",
      "gateway_type": "default",
      "nat_outbound_ip_addresses": [],
      "is_nat": true,
      "gateway_device": "68:d7:9a:5b:1d:55",
      "ipv6_ra_enabled": true,
      "upnp_lan_enabled": false,
      "teleport_enabled": false,
      "vpn_combined_enabled": false,
      "dhcpd_dns_1": "1.1.1.3",
      "dhcpd_dns_2": "1.0.0.3"
    }
  ]
}
```

Clear LAN DNS

- Payload
    ```json
    {
    "auto_scale_enabled": false,
    "dhcp_relay_enabled": false,
    "dhcpd_boot_enabled": false,
    "dhcpd_dns_enabled": false,
    "dhcpd_enabled": true,
    "dhcpd_gateway_enabled": false,
    "dhcpd_leasetime": 1800,
    "dhcpd_ntp_enabled": false,
    "dhcpd_start": "10.33.33.50",
    "dhcpd_stop": "10.33.33.254",
    "dhcpd_tftp_server": "",
    "dhcpd_time_offset_enabled": false,
    "dhcpd_unifi_controller": "",
    "dhcpguard_enabled": true,
    "dhcpd_wpad_url": "",
    "domain_name": "luna.lan.prasadt.com",
    "enabled": true,
    "igmp_snooping": false,
    "ip_subnet": "10.33.33.1/24",
    "ipv6_interface_type": "none",
    "ipv6_ra_enabled": true,
    "lte_lan_enabled": false,
    "name": "Luna - Servers VLAN",
    "networkgroup": "LAN",
    "upnp_lan_enabled": false,
    "vlan": 33,
    "vlan_enabled": true,
    "purpose": "corporate",
    "teleport_enabled": false,
    "_id": "61c68bf7f54378046deee72b",
    "dhcpd_ip_1": "10.33.33.1",
    "dhcpd_ip_2": "",
    "dhcpd_ip_3": "",
    "dhcpd_user_option_61abfea2cb90b105f40828a9": "compute.lan.prasadt.com,lan.prasadt.com",
    "gateway_type": "default",
    "vpn_combined_enabled": false,
    "dhcpd_dns_1": "8.8.8.8",
    "dhcpd_dns_2": "8.8.4.4",
    "radiusServerSecret": "N/Jh2219Ts4Vk53SyE82Dq97yT4W+qKw"
    }
    ```

    - Response
    ```json
    {
    "meta": {
        "rc": "ok"
    },
    "data": [
        {
        "_id": "61c68bf7f54378046deee72b",
        "name": "Luna - Servers VLAN",
        "enabled": true,
        "networkgroup": "LAN",
        "purpose": "corporate",
        "vlan_enabled": true,
        "vlan": 33,
        "domain_name": "luna.lan.prasadt.com",
        "igmp_snooping": false,
        "auto_scale_enabled": false,
        "dhcpd_start": "10.33.33.50",
        "dhcpd_stop": "10.33.33.254",
        "ip_subnet": "10.33.33.1/24",
        "dhcp_relay_enabled": false,
        "dhcpd_enabled": true,
        "dhcpd_dns_enabled": false,
        "dhcpd_leasetime": 1800,
        "dhcpd_gateway_enabled": false,
        "dhcpd_unifi_controller": "",
        "dhcpguard_enabled": true,
        "dhcpd_ip_1": "10.33.33.1",
        "dhcpd_ip_2": "",
        "dhcpd_ip_3": "",
        "dhcpd_ntp_enabled": false,
        "dhcpd_boot_enabled": false,
        "dhcpd_time_offset_enabled": false,
        "dhcpd_wpad_url": "",
        "dhcpd_tftp_server": "",
        "lte_lan_enabled": false,
        "ipv6_interface_type": "none",
        "dhcpd_user_option_61abfea2cb90b105f40828a9": "compute.lan.prasadt.com,lan.prasadt.com",
        "site_id": "61abfc2bcb90b105f408286d",
        "ipv6_pd_start": "::2",
        "ipv6_pd_stop": "::7d1",
        "gateway_type": "default",
        "nat_outbound_ip_addresses": [],
        "is_nat": true,
        "gateway_device": "68:d7:9a:5b:1d:55",
        "ipv6_ra_enabled": true,
        "upnp_lan_enabled": false,
        "teleport_enabled": false,
        "vpn_combined_enabled": false,
        "dhcpd_dns_1": "8.8.8.8",
        "dhcpd_dns_2": "8.8.4.4"
        }
    ]
    }
    ```
