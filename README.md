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

