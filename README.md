Lua Wireshark Dissectors
========================

Lua wireshark dissector scripts provide an easily customized cross platform dissection solution for viewing common exchange protocols.

Windows
-------

Place lua script(s) in the wireshark plugins directory. In a traditional install this is C:\Program Files\Wireshark\plugins\[version]\

Note: Some packets contain enough information to programmatically determine the correct protocol specification.  Some do not.  If you add multiple dissectors to your plugins folder, wireshark will dissect each "conversation" based on the first matching protocol. 

For more information:

https://wiki.wireshark.org/Lua#How_Lua_fits_into_Wireshark

The Open Markets Initiative (Omi) is a group of technologists dedicated to increasing the stability of electronic financial markets using modern development methods. Enjoy.
