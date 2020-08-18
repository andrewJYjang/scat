from selenium import webdriver

driver = webdriver.Chrome('../driver/chromedriver')
driver.get("http://naver.com")

driver.save_screenshot('../images/001.png')

ele_login = driver.find_element_by_id("id")
ele_login.clear()
ele_login.send_keys("appletree")

ele_login = driver.find_element_by_id("pw")
ele_login.clear()
ele_login.send_keys("********")
