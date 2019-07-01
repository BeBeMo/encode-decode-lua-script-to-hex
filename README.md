# encode-decode-lua-script-to-hex
Encode and decode lua script to hex.

This project shows how to encode from lua script to hex , and how to decode hex to json.  
We keep blank space after encoding.

## Usage
### encode  
（Usage 1）  
Request:
```
lua encode_lua_code.lua 'local cjson = require "cjson";print("%d",os.clock());result = sleep(5);print("%d",os.clock());finish(result);'
```

Respond:
```
6c6f63616c20636a736f6e203d20726571756972652022636a736f6e223b7072696e7428222564222c6f732e636c6f636b2829293b726573756c74203d20736c6565702835293b7072696e7428222564222c6f732e636c6f636b2829293b66696e69736828726573756c74293b
```
  
   
   
（Usage 2）  
lua_encode_lua_code.lua only receive file as standard input stream, so you can use the way of pipe like 'cat xxx | ' . 

Request:
```
cat test_func.lua |lua encode_lua_code.lua
```
Respond:
```
6c6f63616c20636a736f6e203d20726571756972652022636a736f6e223b0a7072696e74286f732e646174652822623420736c6565702074696d652069733a2525632229293b0a6f732e736c6565702835303030293b0a7072696e74286f732e646174652822616674657220736c6565702074696d652069733a2525632229293b0a726573756c74203d207465737446756e6328293b0a66696e69736828726573756c74293b0a
```

### decode  
Request:
```
lua decode_lua_code.lua 6c6f63616c20636a736f6e203d20726571756972652022636a736f6e223b7072696e7428222564222c6f732e636c6f636b2829293b726573756c74203d20736c6565702835293b7072696e7428222564222c6f732e636c6f636b2829293b66696e69736828726573756c74293b
```

Respond:
```
local cjson = require "cjson";print("%d",os.clock());result = sleep(5);print("%d",os.clock());finish(result);
```
