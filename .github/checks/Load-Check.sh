set -o pipefail

# Bare 24 byte pcap header: an empty capture for tshark to read
printf '\324\303\262\241\002\000\004\000\000\000\000\000\000\000\000\000\377\377\000\000\001\000\000\000' > empty.pcap

status=0
loaded=0
failed=0

for dissector in $(find . -name '*_Dissector.lua' | sort); do
  if runuser -u tester -- tshark -r empty.pcap -X "lua_script:$dissector" > /dev/null 2> lua-load.log && ! grep -q "Lua:" lua-load.log; then
    loaded=$((loaded+1))
  else
    echo "FAILED $dissector"
    cat lua-load.log
    failed=$((failed+1))
    status=1
  fi
done

echo "loaded $loaded dissectors, failed $failed"

exit $status
