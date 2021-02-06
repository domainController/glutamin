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
kami@base43:~/Documents/staticAnalysis/ttt-ext$ sort bla | cat -n
     1	chrome.notifications.create
     2	chrome.runtime.get
     3	chrome.runtime.get
     4	chrome.runtime.on
     5	chrome.runtime.on
     6	chrome.runtime.open
     7	chrome.runtime.send
     8	chrome.storage.local.get
     9	chrome.storage.local.get
    10	chrome.storage.local.get
    11	chrome.storage.local.set
    12	chrome.storage.on
    13	chrome.tabs.send
kami@base43:~/Documents/staticAnalysis/ttt-ext$ 
