browser.runtime.onMessage.addListener((message, sender) => {
    if (message.type === 'getFonts') {
        return browser.tabs.query({ active: true, currentWindow: true })
            .then(tabs => {
                const tabId = tabs[0].id;
                return browser.tabs.sendMessage(tabId, { type: 'getFonts' });
            });
    }
});
console.log("Received message in background:", message);
