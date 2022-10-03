*** Settings ***
Library   Browser

*** Test Cases ***
Example Test
    New Browser     headless=False
    New Page    https://trade-sticker-dev.vercel.app/
    Get Text    h1    contains    Playwright
    Take Screenshot