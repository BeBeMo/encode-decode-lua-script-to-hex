local cjson = require "cjson";
print(os.date("b4 sleep time is:%%c"));
os.sleep(5000);
print(os.date("after sleep time is:%%c"));
result = testFunc();
finish(result);
