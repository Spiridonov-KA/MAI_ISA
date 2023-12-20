# Компонентная архитектура
<!-- Состав и взаимосвязи компонентов системы между собой и внешними системами с указанием протоколов, ключевые технологии, используемые для реализации компонентов.
Диаграмма контейнеров C4 и текстовое описание. 
-->
## Компонентная диаграмма

```plantuml
@startuml
!include <C4/C4_Container>

AddElementTag("microService", $shape=EightSidedShape(), $bgColor="CornflowerBlue", $fontColor="white", $legendText="microservice")
AddElementTag("storage", $shape=RoundedBoxShape(), $bgColor="lightSkyBlue", $fontColor="white")

Person(admin, "Администратор")
Person(user, "Пользователь")

System_Ext(web_site, "Клиентский веб-сайт", "HTML, CSS, JavaScript, React", "Веб-интерфейс")

System_Boundary(conference_site, "Сайт конференций") {
   'Container(web_site, "Клиентский веб-сайт", ")
   Container(client_service, "Сервис авторизации", "C++", "Сервис управления пользователями", $tags = "microService")    
   Container(lectures_service, "Сервис докладов", "C++", "Сервис управления докладами", $tags = "microService") 
   Container(conference_service, "Сервис конференций", "C++", "Сервис управления конференциями", $tags = "microService")   
   ContainerDb(db, "База данных", "MySQL", "Хранение данных о коференция, докладах и пользователях", $tags = "storage")
   
}

Rel(admin, web_site, "Создание новых конференций, модерация докладов")
Rel(user, web_site, "Регистрация новых пользователей и докладов")

Rel(web_site, client_service, "Работа с пользователями", "localhost/person")
Rel(client_service, db, "INSERT/SELECT", "SQL")

Rel(web_site, lectures_service, "Работа с докладами", "localhost/lect")
Rel(lectures_service, db, "INSERT/SELECT", "SQL")

Rel(web_site, conference_service, "Работа с конференциями", "localhost/conf")
Rel(conference_service, db, "INSERT/SELECT", "SQL")

@enduml
```
## Список компонентов  

### Сервис авторизации
**API**:
-	Создание нового пользователя
      - входные параметры: login, пароль, имя, фамилия, email, номер телефона
      - выходные параметры: отсутствуют
-	Поиск пользователя по логину
     - входные параметры: login
     - выходные параметры: имя, фамилия, email, номер телефона
-	Поиск пользователя по маске имени и фамилии
     - входные параметры: маска фамилии, маска имени
     - выходные параметры: login, имя, фамилия, email, номер телефона

### Сервис докладов
**API**:
- Создание доклада
  - Входные параметры: название доклада, аннотация, разрешение на запись доклада, идентификатор автора, идентификатор конференции
  - Выходыне параметры: идентификатор доклада
- Получение списка всех докладов
  - Входные параметры: отсутствуют
  - Выходные параметры: массив докладов, где для каждого указаны его идентификатор, название, анотация, разрешение на запись доклада, идентификатор автора и идентификатор конференции

### Сервис конференций
**API**:
- Добавление доклада в конференцию
  - Входные параметры: идентификатор конференции, идентификатор доклада
  - Выходные параметры: отсутсвуют
- Получение списка всех докладов конференции
  - Входные параметры: идентификатор конференции
  - Выходные параметры: массив докладов, читаемых в рамках указанной конференции, где для каждого указаны его идентификатор, название, анотация, разрешение на запись доклада, идентификатор автора и идентификатор конференции


### Модель данных
```puml
@startuml

class Conference {
  id
  location
  title
  description
  format
}

class Lecture {
  id
  title
  description
  record_permission
  author_id
  conference_id
}

class User {
  id
  first_name
  last_name
  email
  phone
  login
  password
}


Conference <- Lecture
User <- Lecture

@enduml
```