package ru.tetrasoft.rig.space.admin.pages;


import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewWellPage {

    private static SelenideElement buttonCreate = $x("//a[@href='/admin/wells/new']");
    private static SelenideElement fieldWellNumber = $x("//input[@data-placeholder='Номер скважины']");
    private static SelenideElement fieldWellCluster = $x("//input[@data-placeholder='Номер куста']");
    private static SelenideElement fieldWellQuantity = $x("//input[@data-placeholder='Кол-во скважин на кусте']");
    private static SelenideElement fieldWellPosition = $x("//input[@data-placeholder='Позиция на кусте']");
    private static SelenideElement fieldWellborn = $x("//span[contains(text(), 'Месторождение')]");
    private static SelenideElement fieldSquare = $x("//span[contains(text(), 'Площадь')]");
    private static SelenideElement fieldLicenseArea = $x("//span[contains(text(), 'Лицензионный участок')]");
    private static SelenideElement fieldPlaceHolder = $x("//span[contains(text(), 'Недропользователь')]");
    private static SelenideElement fieldProject = $x("//span[contains(text(), 'Проект')]");
    private static SelenideElement fieldStatus = $x("//span[contains(text(), 'Статус')]");
    private static SelenideElement fieldUWI = $x("//input[@data-placeholder='UWI']");
    private static SelenideElement fieldCategory = $x("//span[contains(text(), 'Категория скважины по ГНВП')]");
    private static SelenideElement fieldLayer = $x("//span[contains(text(), 'Целевой пласт')]");
    private static SelenideElement fieldFluidType = $x("//span[contains(text(), 'Тип флюида')]");
    private static SelenideElement fieldAppointment = $x("//span[contains(text(), 'Назначение')]");
    private static SelenideElement fieldType = $x("//span[(text()='Тип')]");
    private static SelenideElement fieldConstruction = $x("//span[contains(text(), 'Конструкция')]");
    private static SelenideElement radioButton = $x("//*[contains(text(), 'Морская')]");
    private static SelenideElement fieldLatitude = $x("//input[@data-placeholder='Широта']");
    private static SelenideElement fieldLongitude = $x("//input[@data-placeholder='Долгота']");
    private static SelenideElement fieldTimeZone = $x("//span[contains(text(), 'Временная зона')]");
    private static SelenideElement fieldDescription = $x("//textarea[contains(@data-placeholder, 'Описание')]");
    private static SelenideElement matCellWellPage = $x("//mat-cell//div[contains(text(), 'Ковыктинское')]");

    @Step("Нажатие на кнопку создания")
    public static void clickCreateButton() {
        $(buttonCreate).click();
    }

    @Step("Ввод данных Номера скважины")
    public static void sendDataInputWellNumber(String wellNumber) {
        $(fieldWellNumber).sendKeys(wellNumber);
    }

    @Step("Ввод данных Номера куста")
    public static void sendDataInputWellClusterNumber(String wellClusterNumber) {
        $(fieldWellCluster).sendKeys(wellClusterNumber);
    }

    @Step("Ввод данных Количества скважин")
    public static void sendDataInputWellQuantity(String wellQuantity) {
        $(fieldWellQuantity).sendKeys(wellQuantity);
    }

    @Step("Ввод данных Позиция на кусте")
    public static void sendDataInputWellPositionCluster(String wellPositionCluster) {
        $(fieldWellPosition).sendKeys(wellPositionCluster);
    }

    @Step("Выбор Месторождения")
    public static void selectWellborn(String name) {
        $(fieldWellborn).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Площади")
    public static void selectSquare(String name) {
        $(fieldSquare).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Лицензионного участка")
    public static void selectLicensePlace(String name) {
        $(fieldLicenseArea).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Недропользователя")
    public static void selectWellPlaceHolder(String name) {
        $(fieldPlaceHolder).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Проекта")
    public static void selectProject(String name) {
        $(fieldProject).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Статуса")
    public static void selectStatus(String name) {
        $(fieldStatus).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Ввод UWI")
    public static void sendDataInputUwi(String name) {
        $(fieldUWI).sendKeys(name);
    }

    @Step("Выбор Категория скважины по ГНВП'")
    public static void selectCategory(String name) {
        $(fieldCategory).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Целевого пласта")
    public static void selectTargetLayer(String name) {
        $(fieldLayer).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Типа флюида")
    public static void selectFluidType(String name) {
        $(fieldFluidType).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Назначения")
    public static void selectAppointment(String name) {
        $(fieldAppointment).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Типа")
    public static void selectType(String name) {
        $(fieldType).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Конструкции")
    public static void selectConstruction(String name) {
        $(fieldConstruction).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Выбор Морского типа")
    public static void selectRadioType() {
        $(radioButton).click();
    }

    @Step("Ввод Широты")
    public static void sendDataInputLatitude(String name) {
        $(fieldLatitude).sendKeys(name);
    }

    @Step("Ввод Долготы")
    public static void sendDataInputLongitude(String name) {
        $(fieldLongitude).sendKeys(name);
    }

    @Step("Выбор Временной зоны")
    public static void selectTimeZone(String name) {
        $(fieldTimeZone).click();
        $x("//div[contains(text(), '" + name + "')]").click();
    }

    @Step("Ввод Описания")
    public static void sendDataInputDescription(String name) {
        $(fieldDescription).sendKeys(name);
    }

    @Step("Проверка записи в таблице")
    public static void matCellCheckSaveResultWellPage(String value) {
        $(matCellWellPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickWellPage() {
        $(matCellWellPage).click();
    }
}