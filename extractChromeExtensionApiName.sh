kami@base43:~/Documents/staticAnalysis/ttt-ext$ grep -Eor 'chrome\.[a-z]*\.[a-z]*\.?[a-z]*' .  | awk -F ':' '{print $2}' > bla
kami@base43:~/Documents/staticAnalysis/ttt-ext$ cat bla
chrome.tabs.send
chrome.runtime.open
chrome.storage.local.get
chrome.storage.on
chrome.runtime.on
chrome.notifications.create
chrome.runtime.get
chrome.runtime.get
chrome.storage.local.get
chrome.runtime.send
chrome.runtime.on
chrome.storage.local.set
chrome.storage.local.get
kami@base43:~/Documents/staticAnalysis/ttt-ext$ sort bla | uniq -c | sort -r | cat -n
     1	      3 chrome.storage.local.get
     2	      2 chrome.runtime.on
     3	      2 chrome.runtime.get
     4	      1 chrome.tabs.send
     5	      1 chrome.storage.on
     6	      1 chrome.storage.local.set
     7	      1 chrome.runtime.send
     8	      1 chrome.runtime.open
     9	      1 chrome.notifications.create
kami@base43:~/Documents/staticAnalysis/ttt-ext$ 

