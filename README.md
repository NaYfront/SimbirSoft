# Программа обучения ios-разработчика
###### Туториал по изучению теоретических материалов:
Обозначение    | Уровень важности
--------|-------------------------------------------------------------------------------
**(\*\*\*\*)**   | Без изучения этого материала невозможно успешное прохождение темы
**(\*\*\*)**     | Материал, без которого сложно успешно завершить изучение темы
**(\*\*)**       | Важный материал, рекомендуемый к изучению
**(\*)**         | Полезная литература, улучшающая навыки

---
## Правила логирования времени и прохождения программы обучения
---
### Логирование времени
Для ментора первостепенно понимать, сколько именно времени тратится на ту или иную задачу. Поэтому логирование времени осуществяется следующим образом.

1. Логируем в саму задачу:
+ Время, затраченное на выполнение практического задания;
+ Время на прочтение теории, необходимой для выполнения практического задания;

2. Логируем в Разработка/Прочая активность/Другое:
+ Время, затраченное на ожидание проверки выполненного задания ментором;
+ Время на прочтение прочей учебной литературы (список рекомендуемой литературы представлен в конце);

### Прохождение программы обучения
 Программа обучения разделена на секции. Каждая секция состоит из
 + Теоретической части;
 + Практической части;
 + Теста;

 Каждая секция начинается с выполнения практического задания. Теоретический материал изучается по мере необходимости для выполнения практики. После завершения практического задания необходимо в gitlab создать merge request на ментора, чтобы он смог проверить задание. Если задание выполнено успешно, то ментор предоставляет тест по пройденной секции. Для успешного прохождения теста в большинстве случаев достаточно знаний, полученных в ходе выполнения практического задания и прочтения необходимой для него теории.

 Стоит отметить, что ментор в силу различных обстоятельств не всегда может оперативно проверять merge request'ы и предоставлять тесты. Поэтому, если ментор вам говорит, что сможет проверить задание/предоставить тест только через несколько часов - приступайте к выполнению следующей секции программы обучения.
 **Важно** одновременно непроверенным может быть не более одной секции программы обучения. То есть, чтобы приступить к 5ой секции, Ваше практическое задание по 3ей секции должно быть одобрено, а тест пройден.


 В случае возникновения вопросов во время выполнения практического задания, можно просить помощи у ментора. Однако не стоит подходить к ментору с недекомпозированной задачей из разряда "Я не понимаю, как сверстать экран". Декомпозируйте задачу, чтобы задать ментору более конкретный вопрос. Также не стоит сразу же спрашивать ментора, как только возникла трудность. Для начала попробуйте самостоятельно найти ответ на свой вопрос в интернете.

---
## I. Основные принципы разработки. Git. Flow проектов
---

**Максимальное время выполнения блока - 1 день**

### Теоретическая часть

**1. ООП:**
+ [Основные принципы](https://progstudy.ru/index.php/sm/article/ob-ektno-orientirovannoe-programmirovanie)  **(\*\*\*\*)**

**2. SOLID**
+ [Принципы SOLID](https://ru.wikipedia.org/wiki/SOLID_(%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%BD%D0%BE-%D0%BE%D1%80%D0%B8%D0%B5%D0%BD%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D0%B5_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5))  **(\*\*\*)**
+ [SOLID в Swift](https://medium.com/@vinodhswamy/solid-principles-in-swift-7dc2b793fd68) **(\*)**

**3. Работа с Git, gitflow**
+ [Основные команды](https://git-scm.com/book/ru/v2) : init, clone, add, status, stash, commit (-m, -am, --amend), fetch, pull, push, branch, checkout, merge **(\*\*\*\*)**
+ Что такое [git flow](https://kb.simbirsoft.com/article/gitflow-method-overview/) **(\*\*\*\)**
+ [Первоначальная настройка](https://git-scm.com/book/ru/v2/%D0%92%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5-%D0%9F%D0%B5%D1%80%D0%B2%D0%BE%D0%BD%D0%B0%D1%87%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F-%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-Git): конфигурация username и email **(\*\*\*\)**

**4. Ведение проектов**
+  [Flow проекта, ведение в Power Steering](https://kb.simbirsoft.com/article/tasktracker/) **(\*\*\*\)**

**5. Создание проекта, среда разработки Xcode**
+ [Создание нового проекта](https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI.html#//apple_ref/doc/uid/TP40015214-CH5-SW3) **(\*\*\*\*)**
+ [Основы интерфейса Xcode](https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI.html#//apple_ref/doc/uid/TP40015214-CH5-SW4) **(\*\*\*\*)**

**6. Менеджеры зависимостей**
+ [Cocoapods](https://cocoapods.org/) **(\*\*\*\)**
+ [Carthage](https://github.com/Carthage/Carthage) **(\*\*\)**


### Практическое задание
1. При старте работ над практическим заданием, необходимо получить доступ к эпику со своим именем в проекте [Jira](https://jira.simbirsoft.com/projects/EDUMOBILE/issues/). Создать в эпике сабтаск с типом "Mobile" с названием "I. Основные принципы разработки. Git. Flow проектов" и обновить статус задачи на "In progress".
2. В [корпоративном gitlab](http://gitlab.simbirsoft/) создать новый репозиторий и следуя инструкциям, склонировать его к себе на компьютер. В настройках репозитория дать доступ ментору и руководителю отдела.
3.  В глобальных конфигурациях git прописать корректное имя пользователя и e-mail, которые будут использоваться для подписи коммитов.
4. Добавить `.gitignore`. Содержание файла можно взять с ресурса: https://github.com/github/gitignore/blob/master/Swift.gitignore. После добавления необходимо раскомментировать `Pods`.
5. Создать новый swift-проект (Single View App). Переключиться на новую ветку `dev`. Cделать коммит и запушить изменения на remote-сервер в `dev` ветку
6. Установить на рабочем компьютер гем [cocoapods](https://cocoapods.org/), исходя из инструкции на официальном сайте
7. Интегрировать библиотеку [Alamofire](https://github.com/Alamofire/Alamofire) в проект с помощью Cocoapods, запусить созданный автоматически файл `.xcworkspace`, запустить проект на симуляторе
8. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.

---
## II. Swift. Часть 1
---

**Максимальное время выполнения блока - 2 дня**

### Теоретическая часть
Документация по языку Swif 4.0.3: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html .
Предпочтительно изучение всей документации и всех возможностей языка.
Ниже приведены обязательные для изучения темы.

**1. Основы:**
+ [Playground](https://www.raywenderlich.com/143771/swift-tutorial-part-1-expressions-variables-constants). Выполнение туториала не является обязательным **(\*\*\*\*)**
+ [Переменные и константы](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID310)  **(\*\*\*\*)**
+ [Комментарии](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID315)  **(\*\*\*\*)**
+ [Простые типы данных: целый числа, числа с плавающей точкой, строгая типизация и вывод типов](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID317)  **(\*\*\*\*)**
+ [Логические типы](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID328)  **(\*\*\*\*)**
+ [Кортежи](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID329)  **(\*\*\*\*)**
+ [Опциональные типы](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID330)  **(\*\*\*\*)**

**2. Базовые операторы:**
+ [Присваивание](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID62)  **(\*\*\*\*)**
+ [Арифметические операторы](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID63)  **(\*\*\*\*)**
+ [Сравнения](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID70)  **(\*\*\*\*)**
+ [Логические операторы](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID76)  **(\*\*\*\*)**

**3. Строки:**
+ [Строковые литералы: однострочные и многострочные, специальные символы](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID286)  **(\*\*\*\*)**
+ [Конкатенация строк](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID291)  **(\*\*\*\*)**
+ [Интерполяция строк](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID292)  **(\*\*\*\*)**

**4. Коллекции:**
+ [Изменчивость коллекций](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID106)  **(\*\*\*\*)**
+ [Массивы](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID107)  **(\*\*\*\*)**
+ [Множества](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID484)  **(\*\*\*\*)**
+ [Словари](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID113)  **(\*\*\*\*)**

**5. Управление потоком:**
+ [Цикл For-in](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID121)  **(\*\*\*\*)**
+ [Цикл While](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID124)  **(\*\*\*\*)**
+ [Условные конструкции](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID127)  **(\*\*\*\*)**
+ [Операторы передачи управления](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID135)  **(\*\*\*\*)**
+ [Ранний выход](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID525)  **(\*\*\*\*)**

**6. Функции:**
+ [Объявление и вызов функций](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID159)  **(\*\*\*\*)**
+ [Параметры и возвращаемые значения](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID160)  **(\*\*\*\*)**

**7. Code-style**
+ [Swift code-style](https://github.com/raywenderlich/swift-style-guide) **(\*\*\*\)**

### Практическое задание
Задания необходимо выполнить используя Playground.

Все задачи должны быть реализованы в одном файле и разделены комментариями, указывающими на номер или текст задания.

**Важно! Весь код должен быть написан по предоставленному code-style**
1. Создать в эпике сабтаск с типом "Mobile" с названием "II. Swift. Часть 1" и взять ее в работу.
2. Определить две константы `a` и `b` типа `Double`, присвоить им любые значения. Вычислить среднее значение и сохранить результат в переменную `avarage`.
3. Создать кортеж, и задать два любых строковых значения с названиями `firstName` и `lastName`. Далее необходимо вывести в консоль строку в формате "Full name: [firstName] [lastName]".
4. Создать две опциональные переменные типа `Float`. Одной из них задать первоначальное значение. Написать функцию, которая принимает на вход опциональную переменную типа `Float`. Функция должна **безопасно** извлечь значение из входящей переменной. Если значение удалось получить - необходимо вывести его в консоль, если значение у переменной отсутствует вывести в консоль фразу "Variable can't be unwrapped". Вызвать функцию дважды с двумя ранее созданными переменными.
5. Напишите программу для вывода первых 15 чисел последовательности Фибоначчи
6. Напишите программу для сортировки массива, использующую метод пузырька. Сортировка должна происходить в отдельной функции, принимающей на вход исходный массив.
7. Напишите программу, решающую задачу: есть входящая строка формата "abc123", где сначала идет любая последовательность букв, потом число. Необходимо получить новую строку, в конце которой будет число на единицу больше предыдущего, то есть "abc124".
8. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.

---
## III. Swift. Часть 2
---

**Максимальное время выполнения блока - 2 дня**

### Теоретическая часть

**1. Замыкания:**
+ [Замыкающие выражения](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html#//apple_ref/doc/uid/TP40014097-CH11-ID95)  **(\*\*\*\*)**
+ [Последующее замыкание](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html#//apple_ref/doc/uid/TP40014097-CH11-ID102)  **(\*\*\*\*)**
+ [Шпаргалка по определению замыканий](http://fuckingclosuresyntax.com/) **(\*\*)**

**2. Перечисления:**
+ [Синтаксис](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html#//apple_ref/doc/uid/TP40014097-CH12-ID146)  **(\*\*\*\*)**

**3. Классы и структуры:**
+ [Классы и структуры](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID83)  **(\*\*\*\*)**
+ [Структуры и перечисления - типы значения](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID88)  **(\*\*\*\*)**
+ [Классы - ссылочный тип](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID89)  **(\*\*\*\*)**

**4. Свойства:**
+ [Свойства хранения](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html#//apple_ref/doc/uid/TP40014097-CH14-ID255)  **(\*\*\*\*)**
+ [Вычисляемые свойства](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html#//apple_ref/doc/uid/TP40014097-CH14-ID259)  **(\*\*\*\*)**
+ [Глобальные и локальные переменные](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html#//apple_ref/doc/uid/TP40014097-CH14-ID263)  **(\*\*\*\*)**

**5. Методы:**
+ [Методы экземпляра](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Methods.html#//apple_ref/doc/uid/TP40014097-CH15-ID235)  **(\*\*\*\*)**
+ [Методы типа](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Methods.html#//apple_ref/doc/uid/TP40014097-CH15-ID241)  **(\*\*\*\*)**

**6. Расширения:**
+ [Синтаксис](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Extensions.html#//apple_ref/doc/uid/TP40014097-CH24-ID470)  **(\*\*\*\*)**

**7. Протоколы:**
+ [Синтаксис](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html#//apple_ref/doc/uid/TP40014097-CH25-ID268)  **(\*\*\*\*)**

**8. Дженерики (универсальные шаблоны):**
+ [Универсальные шаблоны](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html#//apple_ref/doc/uid/TP40014097-CH26-ID179)  **(\*\*\*\*)**

**9. ARC:**
+ [Принцип работы ARC](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49)  **(\*\*\*\*)**
+ [Цикл сильных ссылок](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID51)  **(\*\*\*\*)**

**10. Code-style**
+ [Swift code-style](https://github.com/raywenderlich/swift-style-guide) **(\*\*\*\)**

### Практическое задание
Задания необходимо выполнить используя Playground.

Все задачи должны быть реализованы в одном файле и разделены комментариями, указывающими на номер или текст задания.

**Важно! Весь код должен быть написан по предоставленному code-style**
1. Создать в эпике сабтаск с типом "Mobile" с названием "III. Swift. Часть 2" и взять ее в работу.
2. Написать простое замыкание в переменной `myClosure`, замыкание должно выводить в консоль фразу "I love Swift". Вызвать это замыкание. Далее написать функцию, которая будет запускать заданное замыкание заданное количество раз. Объявить функцию так: `func repeatTask (times: Int, task: () -> Void)`. Функция должна запускать `times` раз замыкание `task` . Используйте эту функцию для печати «I love Swift» 10 раз.
3. Условия: есть начальная позиция на двумерной плоскости, можно осуществлять последовательность шагов по четырем направлениям up, down, left, right. Размерность каждого шага равна 1. Создать перечисление `Directions` с направлениями движения. Создать переменную `location` с начальными координатами (0,0), создать массив элементами которого будут направления из перечисления. Положить в этот массив следующую последовательность шагов: [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]. Програмно вычислить какие будут координаты у переменной `location` после выполнения этой последовательности шагов.
4. Создать класс `Rectangle` с двумя неопциональными свойствами: ширина и длина. Реализовать в этом классе метод вычисляющий и выводящий в консоль периметр прямоугольника. Создать экземпляр класса и вызвать у него этот метод.
5. Создать расширение класса `Rectangle`, которое будет обладать вычисляемым свойством площадь. Вывести в консоль площадь уже ранее созданного объекта.
7. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.


---
## IV. Верстка
---

**Максимальное время выполнения блока - 3 дня**

### Теоретическая часть

В случае если по ссылке встречается пошаговый гайд - рекомендуется его выполнить в отдельном проекте.

**1. Начало разработки под iOS (Apple)**
+ [Первые шаги в UI](https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI.html#//apple_ref/doc/uid/TP40015214-CH5-SW1) **(\*\*\*\*)**
+ [Глоссарий](https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/GlossaryDefinitions.html#//apple_ref/doc/uid/TP40015214-CH12-SW1)**(\*\*\)**

**2. UIKit**
+ [Фреймворк UIKit и его компоненты](https://developer.apple.com/documentation/uikit) **(\*\*\)**
+ [Views and Controls](https://developer.apple.com/documentation/uikit/views_and_controls) **(\*\*\*)**
+ [View Controllers](https://developer.apple.com/documentation/uikit/view_controllers) **(\*\*\*)**

**3. UIViewController**
+ [Жизненный цикл UIViewController](https://habrahabr.ru/post/129557/) **(\*\*\*)**

**4. UINavigationControler**
+ [Обзор](https://developer.apple.com/documentation/uikit/uinavigationcontroller) **(\*\*\*)**

**5. UITabBarController**
+ [Обзор](https://developer.apple.com/documentation/uikit/uitabbarcontroller) **(\*\*\*)**

**6. Auto Layout**
+ [Основы](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/index.html#//apple_ref/doc/uid/TP40010853-CH7-SW1) **(\*\*\*\*)**
+ [Constraints](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/AnatomyofaConstraint.html#//apple_ref/doc/uid/TP40010853-CH9-SW1) **(\*\*\*\*)**
+ [Constraints в Interface Builder](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithConstraintsinInterfaceBuidler.html#//apple_ref/doc/uid/TP40010853-CH10-SW1) **(\*\*\*\*)**
+ [UIStackView](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/LayoutUsingStackViews.html#//apple_ref/doc/uid/TP40010853-CH11-SW1) **(\*\*\*)**

**7. UITableView, UICollectionView**
+ [Обзор UITableView](https://developer.apple.com/documentation/uikit/uitableview) **(\*\*\)**
+ [Работа с UITableView](https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/CreateATableView.html#//apple_ref/doc/uid/TP40015214-CH8-SW1)**(\*\*\*\*)**
+ [Обзор UICollectionView](https://developer.apple.com/documentation/uikit/uicollectionview) **(\*\*\)**
+ [Работа с UICollectionView](https://www.raywenderlich.com/136159/uicollectionview-tutorial-getting-started) **(\*\*\*)**

**8. Ресурсы**
+ [Добавление шрифтов](https://medium.com/yay-its-erica/how-to-import-fonts-into-xcode-swift-3-f0de7e921ef8) **(\*\*\)**
+ [Разрешения изображений](https://developer.apple.com/ios/human-interface-guidelines/icons-and-images/image-size-and-resolution/) **(\*\*\)**
+ [Zeplin](https://habrahabr.ru/company/uteam/blog/315542/) **(\*\*\)**

**Важно** В компании при разработке любого мобильного приложения считается правилом хорошего тона придерживаться нефункциональных требований, описанных в [данной статье](https://kb.simbirsoft.com/article/nonfunctional-support/)

### Практическое задание
Работа должна производится в созданном ранее проекте.

Все изменения должны быть закоммичены, а названия коммитов должны коротко и исчерпывающе описывать содержащие изменения. Каждый коммит должен быть рабочим, отправка некомпилирующегося кода недопустима. Для работы над этим заданием необходимо переключится на ветку `layouts` и все изменения пушить в нее. После завершения работы над задачей в gitlab необходимо создать merge request в ветку `dev`.
Код должен быть читабельным и написан согласно code-style. В системе Jira также необходимо создать задачу в эпике со своим именем, в которую после завершения будет залогировано время.

1. Создать в эпике сабтаск с типом "Mobile" с названием "IV. Верстка" и взять ее в работу.
2. Добавить иконки приложения и сделать на экране iPhone отображаемое название приложения "Хочу помочь". Ресурсы иконок [тут](https://app.zeplin.io/project/5a730a28baefbc1611730670/screen/5a730a7e623e5b10ee3387ee).
3. Реализовать Splash Screen согласно [макету](https://app.zeplin.io/project/5a730a28baefbc1611730670/screen/5a730ad0f34da268755ce974).
4. Создать экран "Категории помощи" согласно [макету](https://app.zeplin.io/project/5a730a28baefbc1611730670/screen/5a730ab2cb8d0463108c4826).
 - Необходимо реализовать `UITabBarController` согласно макету. Экран "Категории помощи" должен быть показан после Splash Screen. По нажатию по стрелки назад, приложение закрывается.
 - Экран "Категории помощи" должен лежать в стеке `Navigation Controller`
 - Кастомизация `Navigation Bar` должна быть произведена через `UINavigationBar.appearance`
 - Кнопку "Назад" в верхнем баре - не реализовывать
 - Сам экран должен представлять из себя `UIViewController` с добавленной на него `UICollectionView`.
 - Верстка должна быть реализована средствами Interface Builder (Storybord, .xib, Auto Layouts).
 - Для ячеек `CollectionView` должен быть создан свой класс - наследник `UICollectionViewCell`
 - Верстка должна быть выполнена с учетом "pixel perfect" - когда все элементы дизайна расположены и имеют размеры абсолютно идентичные макету.
 - Все переиспользуемые константы должны быть вынесены в глобальные для доступа из других мест
 - Никаких "магических чисел", все должно иметь понятные названия
5. Подключить статические анализаторы кода и исправить выявленные замечания
 - Установить [SwiftLint](https://github.com/realm/SwiftLint)
 - Запустить и исправить выявленные SwiftLint замечания
6. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.

---
## V. Структуры данных
---

**Максимальное время выполнения блока - 4 дня**

### Теоретическая часть

**1. JSON:**
+ [Понятие](https://ru.wikipedia.org/wiki/JSON)  **(\*\*\*\*)**
+ [Парсинг в Swift 4](https://benscheirman.com/2017/06/swift-json/)  **(\*\*\*\*)**
+ Популярный фреймворк для парсинга [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) **(\*\*\)**

**2. Работа с файлами:**
+ [Чтение из файла в Bundle](https://www.hackingwithswift.com/example-code/strings/how-to-load-a-string-from-a-file-in-your-bundle)  **(\*\*\*\*)**

**3. Service-oriented architecture (SOA)**
+ [Архитектурный дизайн МП](https://habrahabr.ru/company/redmadrobot/blog/246551/)  **(\*\*\*\*)**

### Практическое задание
Работа должна производится в созданном ранее проекте.

Все изменения должны быть закоммичены, а названия коммитов должны коротко и исчерпывающе описывать содержащие изменения. Каждый коммит должен быть рабочим, отправка некомпилирующегося кода недопустима. Для работы над этим заданием необходимо переключится на ветку `data_structures` и все изменения пушить в нее. После завершения работы над задачей в gitlab необходимо создать merge request в ветку `dev`.
Код должен быть читабельным и написан согласно code-style. Верстка экранов должна быть выполнена по принципу pixel-perfect.

1. Создать в эпике сабтаск с типом "Mobile" с названием "V. Структуры данных" и взять ее в работу.
2. Сверстать экран "Благотворительных событий" согласно [макету](https://zpl.io/bl1vx7P). Переключение между "Текущие" и "Завершенные" **не реализовывать**. Работать только с текущими событиями. Переход на этот экран осуществляется при выборе любой категории на экране "Категории помощи".
3. Сверстать экран "Детальное описание события" согласно [макету](https://zpl.io/VD75ojv). Переход на этот экран осуществляется при выборе любого события из списка, данный экран должен получить информацию о том, какое событие было выбрано на предыдущем шаге.
4. Необходимо создать два json'а. Содержащих в себе массивы категорий и благотворительных событий. Информация об объектах должна быть достаточной для формирования отображений на экранах, а также для корректного разделения по категориям помощи. Каждый объект должен обладать уникальным (среди объектов своего типа) идентификатором. Проверить корректность созданных json-ов через [online-parser](http://json.parser.online.fr/). Записать их в 2 файла и поместить в проект.
5. Необходимо создать сущности соответствующие понятиям Категория и Событие.
6. Создать сервис, который будет читать созданные json из файлов, парсить их и преобразовывать в массивы.
7. Наполнить экраны полученными данными. В сервисе учесть возможность фильтрации по категориям.
8. Запустить статические анализаторы кода (SwiftLint) и исправить найденные замечания
9. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.

---
## VI. Многопоточность
---

**Максимальное время выполнения блока - 2 дня**

### Теоретическая часть

**1. Базовые понятия:**
+ [Определение](https://ru.wikipedia.org/wiki/%D0%9C%D0%BD%D0%BE%D0%B3%D0%BE%D0%BF%D0%BE%D1%82%D0%BE%D1%87%D0%BD%D0%BE%D1%81%D1%82%D1%8C)  **(\*\*\*\*)**
+ [Мьютекс](https://ru.wikipedia.org/wiki/%D0%9C%D1%8C%D1%8E%D1%82%D0%B5%D0%BA%D1%81)  **(\*\*\)**
+ [Семафор](https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%BC%D0%B0%D1%84%D0%BE%D1%80_(%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0))  **(\*\*\)**
+ [Дэдлок](https://ru.wikipedia.org/wiki/Deadlock)  **(\*\*\)**

**2. Многопоточность в iOS:**
+ [Введение в GCD](https://medium.com/@abhimuralidharan/understanding-threads-in-ios-5b8d7ab16f09)  **(\*\*\*\*)**
+ [GCD и Dispatch Queues](https://habrahabr.ru/post/320152/) **(\*\*\*)**
+ [Operation и OperationQueue](https://www.raywenderlich.com/76341/use-nsoperation-nsoperationqueue-swift)  **(\*\*\*)**
+ [NSThread](https://developer.apple.com/documentation/foundation/nsthread) **(\*\*)**

### Практическое задание
Работа должна производится в созданном ранее проекте.

Все изменения должны быть закоммичены, а названия коммитов должны коротко и исчерпывающе описывать содержащие изменения. Каждый коммит должен быть рабочим, отправка некомпилирующегося кода недопустима. Для работы над этим заданием необходимо переключится на ветку `concurrency` и все изменения пушить в нее. После завершения работы над задачей в gitlab необходимо создать merge request в ветку `dev`.
Код должен быть читабельным и написан согласно code-style.

1. Создать в эпике сабтаск с типом "Mobile" с названием "VI. Многопоточность" и взять ее в работу.
2. В рамках предыдущего задания было реализовано чтение из файла. Перенести чтение из файла, парсинг, фильтрацию в background-поток используя GCD. Внимание! Все действия c UI должны совершаться в главном потоке.
3. Реализовать Activity Indicator на экранах Категорий и Событий. Индикатор должен показываться с момента запроса данных до момента их отображения на экране.
4. Запустить статические анализаторы кода (SwiftLint) и исправить найденные замечания
5. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.

---
## VII. Базы данных
---

**Максимальное время выполнения блока - 5 дней**

### Теоретическая часть

**1. Основы Core Data:**
+ [Core Data для самых маленьких](https://habrahabr.ru/post/303512/)  **(\*\*\*\*)**
+ [Core Data Programming Guide](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/index.html)  **(\*\*\*\*)**

**2. Основы Realm:**
+ [Введение](https://code.tutsplus.com/ru/tutorials/getting-started-with-realm-database-for-ios--cms-29018)  **(\*\*\*\*)**
+ [Realm + Swift](https://realm.io/docs/swift/latest/)  **(\*\)**

### Практическое задание
Работа должна производится в созданном ранее проекте.

Все изменения должны быть закоммичены, а названия коммитов должны коротко и исчерпывающе описывать содержащие изменения. Каждый коммит должен быть рабочим, отправка некомпилирующегося кода недопустима. Для работы над этим заданием необходимо переключится на ветку `data_base` и все изменения пушить в нее. После завершения работы над задачей в gitlab необходимо создать merge request в ветку `dev`.
Код должен быть читабельным и написан согласно code-style. В системе Jira также необходимо создать задачу в эпике со своим именем, в которую после завершения будет залогировано время.

1. Создать в эпике сабтаск с типом "Mobile" с названием "VII. Базы данных" и взять ее в работу.
2. Необходимо создать базу данных с использованием Core Data для хранения сущностей Категории и События.
3. Реализовать на старте приложения чтение из файла и сохранение в БД.
 - Все "тяжелые" операции должны быть реализованы в фоновом потоке
 - На время выполнения фоновых операций пользователю должен быть показан Activity Indicator
4. Наполнение экранов Категории и События должно происходить из созданной базы данных
 - Все "тяжелые" операции должны быть реализованы в фоновом потоке
 - На время выполнения фоновых операций пользователю должен быть показан Activity Indicator
 - На presentation-слое мы должны оперировать ранее созданными объектами, а не сущностями Core Data. Для этого предусмотреть маппинг
5. Запустить статические анализаторы кода (SwiftLint) и исправить найденные замечания
6. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.

---
## VIII. Работа с сетью
---

**Максимальное время выполнения блока - 5 дней**

### Теоретическая часть

**1. Парсинг JSON:**
+ [JSON](https://www.json.org/json-ru.html) **(\*\*\*\*)**
+ [Codable](https://habr.com/ru/post/414221/)  **(\*\*\*\*)**

**2. Работа с сетью:**
+ [URLSession](https://www.raywenderlich.com/3244963-urlsession-tutorial-getting-started)  **(\*\*\*\*)**

**3. Alamofire:**
+ [Документация](https://github.com/Alamofire/Alamofire)  **(\*\*\)**

**4. Firebase:**
+ [Документация](https://firebase.google.com/docs/ios/setup)  **(\*\*\*\*)**

**5. Отладка. Перехват и подмена трафика мобильных устройств:**
+ [Postman](https://habr.com/ru/company/kolesa/blog/351250/)  **(\*\*)**
+ [Fiddler](https://learn.javascript.ru/fiddler)  **(\*\*)**
+ [Charles](http://wormiks.ru/faq_po_programmam_wormix/11-charles_instrukcija_polzovatelja_i_faq.html)  **(\*\*)**
+ [Перехват и подмена трафика мобильных устройств](https://kb.simbirsoft.com/article/traffic-sniffers/)  **(\*)**

### Практическое задание
Работа должна производится в созданном ранее проекте.

Все изменения должны быть закоммичены, а названия коммитов должны коротко и исчерпывающе описывать содержащие изменения. Каждый коммит должен быть рабочим, отправка некомпилирующегося кода недопустима. Для работы над этим заданием необходимо переключится на ветку `networking
` и все изменения пушить в нее. После завершения работы над задачей в gitlab необходимо создать merge request в ветку `dev`.
Код должен быть читабельным и написан согласно code-style.

1. Создать в эпике сабтаск с типом "Mobile" с названием "VIII. Работа с сетью" и взять ее в работу.
2. Необходимо реализовать транспортный слой приложения, который будет осуществалять загрузку данных с сервера. Для этого требуется использовать firebase. Документация по работе с firebase [тут](https://firebase.google.com/docs/ios/setup).
 - Все "тяжелые" операции должны быть реализованы в фоновом потоке
 - На время выполнения фоновых операций пользователю должен быть показан Activity Indicator
3. Заменить загрузку из файла на старте приложения на загрузку с сервера. Для загрузки данных использовать URLSession. В случае если ответ от сервера ошибочен - загрузить данные из файла.
 - Все "тяжелые" операции должны быть реализованы в фоновом потоке
 - На время выполнения фоновых операций пользователю должен быть показан Activity Indicator
 - В случае ошибки от сервера, корреткно обработать и отобразить
4. Дополнительно создать отдельный метод для загрузки с помощью Alamofire. Проверить правильность работы метода загрузки как через URLSession, так и через Alamofire
5. Запустить статические анализаторы кода (SwiftLint) и исправить найденные замечания
6. После завершения работ над заданием перевести задачу в Jira в статус "Code Review", уведомить своего ментора и залогировать затраченное время.
