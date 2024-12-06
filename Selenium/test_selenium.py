from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.firefox import GeckoDriverManager
import time
from datetime import datetime

driver = webdriver.Firefox(service=Service(GeckoDriverManager().install()))

def escribir_informe(mensaje):
    with open("resultados_prueba.txt", "a") as file:
        file.write(f"{mensaje}\n")

escribir_informe("Inicio de la prueba - " + str(datetime.now()))

driver.get("http://frontendbucket303898.s3-website-us-east-1.amazonaws.com/")

try:
    assert "Catalog" in driver.title  
    escribir_informe("Prueba 1 - Verificacion del titulo: Exito")
except AssertionError:
    escribir_informe("Prueba 1 - Verificacion del titulo: Fallo")

try:
    assert driver.current_url == "http://frontendbucket303898.s3-website-us-east-1.amazonaws.com/"
    escribir_informe("Prueba 2 - Verificacion de la URL: Exito")
except AssertionError:
    escribir_informe("Prueba 2 - Verificacion de la URL: Fallo")

try:
    elemento = driver.find_element(By.ID, "nx-console") 
    assert elemento.is_displayed()
    escribir_informe("Prueba 3 - Verificacion de la presencia de un elemento: Exito")
except (AssertionError, Exception):
    escribir_informe("Prueba 3 - Verificacion de la presencia de un elemento: Fallo")

try:
    boton = driver.find_element(By.ID, "nx-repo")  
    assert boton.is_displayed()
    escribir_informe("Prueba 4 - Verificacion de visibilidad del boton: Exito")
except (AssertionError, Exception):
    escribir_informe("Prueba 4 - Verificacion de visibilidad del boton: Fallo")

try:
    assert "You can activate distributed tasks executions and caching by running:" in driver.page_source  
    escribir_informe("Prueba 5 - Verificacion de texto: Exito")
except AssertionError:
    escribir_informe("Prueba 5 - Verificacion de texto: Fallo")

escribir_informe("Fin de la prueba - " + str(datetime.now()))

driver.quit()
