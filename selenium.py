from selenium import webdriver

driver = webdriver.Chrome('../driver/chromedriver')
driver.get("http://naver.com")

driver.save_screenshot('../images/001.png')
