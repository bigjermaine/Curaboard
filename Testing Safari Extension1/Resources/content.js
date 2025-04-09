// content.js
function getFontsUsedOnPage() {
    const elements = document.querySelectorAll('*');
    const fonts = new Set();

    elements.forEach(el => {
        const style = window.getComputedStyle(el);
        if (style.fontFamily) {
            fonts.add(style.fontFamily);
        }
    });

    return Array.from(fonts);
}

// Listen for message from popup
browser.runtime.onMessage.addListener((request, sender, sendResponse) => {
    if (request.type === "getFonts") {
        const fonts = getFontsUsedOnPage();
        sendResponse({ fonts });
    }
    return true; // To allow async sendResponse
});
