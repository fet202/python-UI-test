import pytest
import time
from selenium import webdriver
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as ES

@pytest.fixture
def driver(request):
    wd = webdriver.Chrome()
    request.addfinalizer(wd.quit)
    wd.implicitly_wait(12)
    return wd
def test_example(driver):
    driver.get("https://mosreg.sotasystem.ru/")
    driver.find_element_by_name("email").send_keys("bvv@2graph.ru")
    driver.find_element_by_name("password").send_keys("123456")
    driver.find_element_by_css_selector(".xui-btn.m-blocky").click()
    time.sleep(5)
    inputElement = driver.execute_script("return document.querySelectorAll('.header-menu-link.ng-scope')[3]")
    inputElement.click()
    time.sleep(5)
    #driver.find_element_by_xpath("//*[@class='header-menu-link-title']").click()

    #driver.find_element_by_class_name("header-menu-link ng-scope is-active").click()
    #WebDriverWait(driver, 10).until(EC.title_is("1"))
