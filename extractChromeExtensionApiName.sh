kami@base43:~/Documents/staticAnalysis/untrusted-types$ grep -Eor 'chrome\.[a-zA-Z]*\.[a-zA-Z]*\.?[a-zA-Z]*' . 
./README.md:chrome.google.com
./src/components/Settings.svelte:chrome.storage.onChanged.addListener
./src/components/App.svelte:chrome.tabs.sendMessage
./src/components/App.svelte:chrome.devtools.inspectedWindow.tabId
./src/components/App.svelte:chrome.runtime.MessageSender
./src/components/App.svelte:chrome.devtools.inspectedWindow.tabId
./src/components/App.svelte:chrome.runtime.onMessage.addListener
./src/injected.ts:chrome.runtime.getURL
./src/background.ts:chrome.storage.onChanged.addListener
./src/background.ts:chrome.webRequest.onBeforeRequest.addListener
./src/background.ts:chrome.runtime.getURL
./src/content.ts:chrome.storage.onChanged.addListener
./src/content.ts:chrome.runtime.sendMessage
./src/content.ts:chrome.runtime.MessageSender
./src/content.ts:chrome.runtime.onMessage.addListener
./src/helpers/chromeSettings.ts:chrome.storage.sync.set
./src/helpers/chromeSettings.ts:chrome.storage.sync.get
./src/helpers/chromeSettings.ts:chrome.storage.onChanged.addListener
./src/devtools.ts:chrome.devtools.panels.create
kami@base43:~/Documents/staticAnalysis/untrusted-types$ grep -Eor 'chrome\.[a-zA-Z]*\.[a-zA-Z]*\.?[a-zA-Z]*' . | wc -l
19
kami@base43:~/Documents/staticAnalysis/untrusted-types$ grep -Eor 'chrome\.[a-zA-Z]*\.[a-zA-Z]*\.?[a-zA-Z]*' . > raw
grep: input file ‘./raw’ is also the output
kami@base43:~/Documents/staticAnalysis/untrusted-types$ sort raw | uniq -c | sort -r | cat -n
     1	      2 ./src/components/App.svelte:chrome.devtools.inspectedWindow.tabId
     2	      1 ./src/injected.ts:chrome.runtime.getURL
     3	      1 ./src/helpers/chromeSettings.ts:chrome.storage.sync.set
     4	      1 ./src/helpers/chromeSettings.ts:chrome.storage.sync.get
     5	      1 ./src/helpers/chromeSettings.ts:chrome.storage.onChanged.addListener
     6	      1 ./src/devtools.ts:chrome.devtools.panels.create
     7	      1 ./src/content.ts:chrome.storage.onChanged.addListener
     8	      1 ./src/content.ts:chrome.runtime.sendMessage
     9	      1 ./src/content.ts:chrome.runtime.onMessage.addListener
    10	      1 ./src/content.ts:chrome.runtime.MessageSender
    11	      1 ./src/components/Settings.svelte:chrome.storage.onChanged.addListener
    12	      1 ./src/components/App.svelte:chrome.tabs.sendMessage
    13	      1 ./src/components/App.svelte:chrome.runtime.onMessage.addListener
    14	      1 ./src/components/App.svelte:chrome.runtime.MessageSender
    15	      1 ./src/background.ts:chrome.webRequest.onBeforeRequest.addListener
    16	      1 ./src/background.ts:chrome.storage.onChanged.addListener
    17	      1 ./src/background.ts:chrome.runtime.getURL
    18	      1 ./README.md:chrome.google.com
kami@base43:~/Documents/staticAnalysis/untrusted-types$ sort raw | uniq -c | sort -r | cat -n > chromeApiNamesStats.txt
kami@base43:~/Documents/staticAnalysis/untrusted-types$ grep -Eor --exclude="raw" --exclude="chromeApiNamesStats.txt" 'chrome\.[a-zA-Z]*\.[a-zA-Z]*\.?[a-zA-Z]*' . | awk -F ':' '{print $2}' > bla
kami@base43:~/Documents/staticAnalysis/untrusted-types$ cat -n bla
     1	chrome.google.com
     2	chrome.storage.onChanged.addListener
     3	chrome.tabs.sendMessage
     4	chrome.devtools.inspectedWindow.tabId
     5	chrome.runtime.MessageSender
     6	chrome.devtools.inspectedWindow.tabId
     7	chrome.runtime.onMessage.addListener
     8	chrome.runtime.getURL
     9	chrome.storage.onChanged.addListener
    10	chrome.webRequest.onBeforeRequest.addListener
    11	chrome.runtime.getURL
    12	chrome.storage.onChanged.addListener
    13	chrome.runtime.sendMessage
    14	chrome.runtime.MessageSender
    15	chrome.runtime.onMessage.addListener
    16	chrome.storage.sync.set
    17	chrome.storage.sync.get
    18	chrome.storage.onChanged.addListener
    19	chrome.devtools.panels.create
kami@base43:~/Documents/staticAnalysis/untrusted-types$ sort bla | uniq -c | sort -r | cat -n
     1	      4 chrome.storage.onChanged.addListener
     2	      2 chrome.runtime.onMessage.addListener
     3	      2 chrome.runtime.MessageSender
     4	      2 chrome.runtime.getURL
     5	      2 chrome.devtools.inspectedWindow.tabId
     6	      1 chrome.webRequest.onBeforeRequest.addListener
     7	      1 chrome.tabs.sendMessage
     8	      1 chrome.storage.sync.set
     9	      1 chrome.storage.sync.get
    10	      1 chrome.runtime.sendMessage
    11	      1 chrome.google.com
    12	      1 chrome.devtools.panels.create
kami@base43:~/Documents/staticAnalysis/untrusted-types$ sort bla | uniq -c | sort -r | cat -n > chromeApiNamesHz.txt
kami@base43:~/Documents/staticAnalysis/untrusted-types$ grep chrom chromeApiNames*
chromeApiNamesHz.txt:     1	      4 chrome.storage.onChanged.addListener
chromeApiNamesHz.txt:     2	      2 chrome.runtime.onMessage.addListener
chromeApiNamesHz.txt:     3	      2 chrome.runtime.MessageSender
chromeApiNamesHz.txt:     4	      2 chrome.runtime.getURL
chromeApiNamesHz.txt:     5	      2 chrome.devtools.inspectedWindow.tabId
chromeApiNamesHz.txt:     6	      1 chrome.webRequest.onBeforeRequest.addListener
chromeApiNamesHz.txt:     7	      1 chrome.tabs.sendMessage
chromeApiNamesHz.txt:     8	      1 chrome.storage.sync.set
chromeApiNamesHz.txt:     9	      1 chrome.storage.sync.get
chromeApiNamesHz.txt:    10	      1 chrome.runtime.sendMessage
chromeApiNamesHz.txt:    11	      1 chrome.google.com
chromeApiNamesHz.txt:    12	      1 chrome.devtools.panels.create
chromeApiNamesStats.txt:     1	      2 ./src/components/App.svelte:chrome.devtools.inspectedWindow.tabId
chromeApiNamesStats.txt:     2	      1 ./src/injected.ts:chrome.runtime.getURL
chromeApiNamesStats.txt:     3	      1 ./src/helpers/chromeSettings.ts:chrome.storage.sync.set
chromeApiNamesStats.txt:     4	      1 ./src/helpers/chromeSettings.ts:chrome.storage.sync.get
chromeApiNamesStats.txt:     5	      1 ./src/helpers/chromeSettings.ts:chrome.storage.onChanged.addListener
chromeApiNamesStats.txt:     6	      1 ./src/devtools.ts:chrome.devtools.panels.create
chromeApiNamesStats.txt:     7	      1 ./src/content.ts:chrome.storage.onChanged.addListener
chromeApiNamesStats.txt:     8	      1 ./src/content.ts:chrome.runtime.sendMessage
chromeApiNamesStats.txt:     9	      1 ./src/content.ts:chrome.runtime.onMessage.addListener
chromeApiNamesStats.txt:    10	      1 ./src/content.ts:chrome.runtime.MessageSender
chromeApiNamesStats.txt:    11	      1 ./src/components/Settings.svelte:chrome.storage.onChanged.addListener
chromeApiNamesStats.txt:    12	      1 ./src/components/App.svelte:chrome.tabs.sendMessage
chromeApiNamesStats.txt:    13	      1 ./src/components/App.svelte:chrome.runtime.onMessage.addListener
chromeApiNamesStats.txt:    14	      1 ./src/components/App.svelte:chrome.runtime.MessageSender
chromeApiNamesStats.txt:    15	      1 ./src/background.ts:chrome.webRequest.onBeforeRequest.addListener
chromeApiNamesStats.txt:    16	      1 ./src/background.ts:chrome.storage.onChanged.addListener
chromeApiNamesStats.txt:    17	      1 ./src/background.ts:chrome.runtime.getURL
chromeApiNamesStats.txt:    18	      1 ./README.md:chrome.google.com
kami@base43:~/Documents/staticAnalysis/untrusted-types$ 
