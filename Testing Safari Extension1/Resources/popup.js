console.log("Hello World!", browser);

const list = document.getElementById("fontList");

browser.tabs.query({ active: true, currentWindow: true }).then((tabs) => {
    browser.tabs.sendMessage(tabs[0].id, { type: "getFonts" }).then((response) => {
        console.log("Fonts received in popup:", response.fonts);

      

        if (response.fonts.length === 0) {
            list.innerHTML = "<li>No fonts found</li>";
            return;
        }

        response.fonts.forEach((font) => {
            const li = document.createElement("li");
            li.textContent = font;
            list.appendChild(li);
        });
    }).catch((error) => {
        console.error("Error getting fonts:", error);
    });
});

browser.runtime.sendNativeMessage("group.com.jermaine", {
    type: "fonts",
    fonts: list
});
