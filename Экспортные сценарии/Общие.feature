﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Экспортные сценарии общие

Сценарий: Инициализация переменных

	И Я запоминаю значение выражения 'ИдентификацияПродуктаУХКлиентСервер.ЭтоУправлениеХолдингом() И НЕ ИдентификацияПродуктаУХКлиентСервер.ЭтоЕХ()' в переменную '$$ЭтоУХ$$'
	
	Если '$$ЭтоУХ$$' Тогда
		Если в панели разделов есть команда 'Справочники' Тогда
			И Я запоминаю значение выражения 'Ложь' в переменную '$$ЭтоPerform$$'
		Иначе
			И Я запоминаю значение выражения 'Истина' в переменную '$$ЭтоPerform$$'
	Иначе
		И Я запоминаю значение выражения 'Ложь' в переменную '$$ЭтоPerform$$'
		
	И Я запоминаю значение выражения 'ИдентификацияПродуктаУХКлиентСервер.ЭтоУправлениеХолдингом() И ИдентификацияПродуктаУХКлиентСервер.ЭтоЕХ()' в переменную '$$ЭтоЕРПУХ$$'

	Если в панели разделов есть команда 'Бюджетирование, отчетность и анализ' Тогда
		И Я запоминаю значение выражения 'Ru' в переменную '$$ЯзыкИнтерфейса$$'
	ИначеЕсли в панели разделов есть команда 'Budgeting, reporting, and analysis' Тогда
		И Я запоминаю значение выражения 'En' в переменную '$$ЯзыкИнтерфейса$$'
		
Сценарий: Я устанавливаю отбор в форме списка 'TheField' 'TheComparisonType' 'TheValue' 

	Тогда открылось окно "List Options"
	И я удаляю все строки таблицы 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор'		
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я нажимаю на кнопку с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборДобавитьЭлементОтбора'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я перехожу к последней строке
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборЛевоеЗначение' я выбираю точное значение '[TheField]'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я активизирую поле с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборВидСравнения'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборВидСравнения' я выбираю точное значение '[TheComparisonType]'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я активизирую поле с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборПравоеЗначение'
	Если 'StrFind(Lower("[TheComparisonType]"),"содержит")>0 ИЛИ StrFind(Lower("[TheComparisonType]"),"начинается с")>0 ИЛИ StrFind(Lower("[TheComparisonType]"),"contain")>0 ИЛИ StrFind(Lower("[TheComparisonType]"),"begin with")>0' Тогда 
		И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' в поле с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборПравоеЗначение' я ввожу текст '[TheValue]'
	Иначе
		И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборПравоеЗначение' я выбираю точное значение '[TheValue]'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'

Сценарий: Я снимаю все отборы в форме списка

	Тогда открылось окно "List Options"
	И я перехожу к закладке с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0'
	И я удаляю все строки таблицы 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор'
	И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'

Сценарий: Таблица 'TheTable' содержит 'TheNumberOfLines' строк из списка:

	Тогда в таблице '[TheTable]' количество строк 'равно' '[TheNumberOfLines]'

	Тогда таблица '[TheTable]' содержит строки:
		| 'Таблица' |	
