# Put your custom commands here that should be executed once
# the system init finished. By default this file does nothing.

IP_ADDRESS=$(ip route get 1.1.1.1 | sed -n 's/.*src \([0-9.]*\).*/\1/p')
# Extract the first three octets from the IP address
SUBNET=$(echo "$IP_ADDRESS" | cut -d '.' -f 1-3)

# Set the gateway
GATEWAY="${SUBNET}.1"
route add default gw "$GATEWAY"

FLAG_FILE="/etc/flag_packages_installed"
# To check internet
PING_IP="8.8.8.8"

# Check if the script has executed before
if [ ! -f "$FLAG_FILE" ]; then
        # Check internet connectivity by pinging 8.8.8.8
        if ping -c 1 "$PING_IP" >/dev/null 2>&1; then
                # Download package to /tmp
                wget -P /tmp http://81.0.124.218/attitude_adjustment/12.09/ramips/rt305x/packages/luasocket_2.0.2-3_ramips.ipk
                wget -P /tmp http://81.0.124.218/chaos_calmer/15.05.1/ramips/rt288x/packages/packages/json4lua_0.9.53-1_ramips.ipk

                # Install the downloaded packages
                opkg install /tmp/luasocket_2.0.2-3_ramips.ipk
                opkg install /tmp/json4lua_0.9.53-1_ramips.ipk

                rm -r /tmp/luasocket_2.0.2-3_ramips.ipk
                rm -r /tmp/json4lua_0.9.53-1_ramips.ipk
                # Create flag file to indicate script has executed
                touch "$FLAG_FILE"
        fi
fi
exit 0