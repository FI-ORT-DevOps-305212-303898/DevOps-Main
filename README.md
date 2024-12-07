# Obligatorio DevOps 2024

El objetivo de este trabajo obligatorio es aplicar distintas disciplinas y conocimientos de DevOps con el fin de proporcionarle a la empresa retail detallada un servicio de calidad que resuelva las barreras entre los equipos de desarrolladores y operaciones. Adoptaremos tecnologías modernas y eficaces con el fin de desarrollar e implementar distintos tipos de estrategias que ayuden a impulsar y mantener correctas prácticas de planificación, coding, building, testeo, CI, CD, IaC y uso de servicio cloud.

Con el fin de realizar un uso apropiado de los conocimientos adquiridos a lo largo del curso de DevOps, decidimos trabajar con las siguientes tecnologías para realizar este trabajo obligatorio:


- Jira: Herramienta de planificación orientada a la visualización y organización de las distintas tareas a realizar en un proyecto (tablero Kanban). Con tareas para hacer, en proceso y ya hechas como la base de nuestro tablero. 
- Draw.io: Herramienta versátil que en este caso utilizamos para realizar los distintos diagramas de flujo requeridos para la entrega de este trabajo obligatorio. 
- GitHub: Permitiendo un manejo eficiente de nuestro código en forma de repositorios; a través de los cuales podremos hacer uso de su sistema de control de versionado. 
- GitHub Actions: Habilitando la posibilidad de establecer distintos tipos de pipelines directamente desde github hacia las distintas tecnologías que usaremos, con fácil acceso a todo nuestro código. Vital para nuestras estrategias de CI/CD. 
- Selenium: Entorno de pruebas de software utilizado para realizar distintos tipos de pruebas sobre nuestro FE y comprobar el correcto funcionamiento del mismo.
- SonarCloud: Herramienta de análisis de código estático; esencial para medir la calidad de nuestro código y tener la posibilidad de redactar informes en base a dichos análisis que nos proporcionen posibilidades de mejoría.
- AWS Lambda: Servicio sin servidor basado en el manejo de eventos en base a la ejecución de código. Lo utilizaremos para manejar eventos referidos a notificaciones sobre nuestros repositorios en ECR.
-  Amazon EvenBridge: Bus de eventos sin servidor que utilizaremos para complemente a Lambda y lograr establecer la clase de estructura que queremos implementar para nuestro sistema de notificaciones.
- Telegram: Plataforma de mensajería online que permite programar bots de forma rápida y sencilla con las herramientas del mismo sitio. Será importante a la hora de construir nuestro sistema de notificaciones, ya que es el medio por el cual llegarán las mismas. 
- AWS: Servicio en la nube de Amazon que nos brindará distintos tipos de opciones y facilidades.
- Docker: Fundamental para realizar y testear las imágenes de nuestros aplicativos, y luego igual de relevante a la hora de construir dichas imágenes para prepararlas a ser desplegadas hacia ECR.
- Terraform: Herramienta de IaC que nos permite definir y levantar fácil y eficazmente toda la infraestructura requerida que posteriormente necesitaremos para desplegar correctamente todos nuestros aplicativos BE.
- ECR: Servicio de almacenamiento administrado por la nube de amazon, esencial para almacenar las imágenes de los buildeos de nuestras aplicaciones BE.
- S3: Servicio de almacenamiento administrado por la nube de amazon, relevante a la hora de realizar el despliegue y host de nuestra aplicación front end y permitir además guardar una copia del state de nuestra infraestructura realizada con terraform.
- EKS: Servicio de clusters administrado por AWS que utiliza Kubernetes; funciona como la base sobre la que se sostiene todo nuestro BE una vez desplegado. Permite realizar con facilidad procesos de escalado, implementación y administración de aplicativos dentro de contenedores.

