﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild


Функционал: проведение документа   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проведение документа
	И я запоминаю значение поля "Номер" как "Номер"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
