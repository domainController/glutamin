kami@base43:~/Documents/staticAnalysis/ttt-ext$ grep -Eor 'chrome\.[a-z]*\.[a-z]*\.?[a-zA-Z]*' . 
./background.js:chrome.tabs.sendMessage
./background.js:chrome.runtime.openOptionsPage
./background.js:chrome.storage.local.get
./background.js:chrome.storage.onChanged
./background.js:chrome.runtime.onMessage
./background.js:chrome.notifications.create
./background.js:chrome.runtime.getURL
./background.js:chrome.runtime.getURL
./content.js:chrome.storage.local.get
./content.js:chrome.runtime.sendMessage
./content.js:chrome.runtime.onMessage
./options.js:chrome.storage.local.set
./options.js:chrome.storage.local.get
kami@base43:~/Documents/staticAnalysis/ttt-ext$ grep -Eor 'chrome\.[a-z]*\.[a-z]*\.?[a-zA-Z]*' . > raw
grep: input file ‘./raw’ is also the output
kami@base43:~/Documents/staticAnalysis/ttt-ext$ sort raw | uniq -c | sort -r | cat -n
     1	      2 ./background.js:chrome.runtime.getURL
     2	      1 ./options.js:chrome.storage.local.set
     3	      1 ./options.js:chrome.storage.local.get
     4	      1 ./content.js:chrome.storage.local.get
     5	      1 ./content.js:chrome.runtime.sendMessage
     6	      1 ./content.js:chrome.runtime.onMessage
     7	      1 ./background.js:chrome.tabs.sendMessage
     8	      1 ./background.js:chrome.storage.onChanged
     9	      1 ./background.js:chrome.storage.local.get
    10	      1 ./background.js:chrome.runtime.openOptionsPage
    11	      1 ./background.js:chrome.runtime.onMessage
    12	      1 ./background.js:chrome.notifications.create
kami@base43:~/Documents/staticAnalysis/ttt-ext$ sort raw | uniq -c | sort -r | cat -n > chromeApiNamesStats.txt
kami@base43:~/Documents/staticAnalysis/ttt-ext$ grep -Eor --exclude="raw" --exclude="chromeApiNamesStats.txt" 'chrome\.[a-z]*\.[a-z]*\.?[a-zA-Z]*' . | awk -F ':' '{print $2}' > bla
kami@base43:~/Documents/staticAnalysis/ttt-ext$ cat bla
chrome.tabs.sendMessage
chrome.runtime.openOptionsPage
chrome.storage.local.get
chrome.storage.onChanged
chrome.runtime.onMessage
chrome.notifications.create
chrome.runtime.getURL
chrome.runtime.getURL
chrome.storage.local.get
chrome.runtime.sendMessage
chrome.runtime.onMessage
chrome.storage.local.set
chrome.storage.local.get
kami@base43:~/Documents/staticAnalysis/ttt-ext$ sort bla | uniq -c | sort -r | cat -n
     1	      3 chrome.storage.local.get
     2	      2 chrome.runtime.onMessage
     3	      2 chrome.runtime.getURL
     4	      1 chrome.tabs.sendMessage
     5	      1 chrome.storage.onChanged
     6	      1 chrome.storage.local.set
     7	      1 chrome.runtime.sendMessage
     8	      1 chrome.runtime.openOptionsPage
     9	      1 chrome.notifications.create
kami@base43:~/Documents/staticAnalysis/ttt-ext$ 

