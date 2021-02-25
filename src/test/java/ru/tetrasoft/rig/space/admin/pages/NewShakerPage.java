package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewShakerPage {

    private static SelenideElement createButton = $x("//a[@href='/admin/rig-equipment/shakers/new']");
    private static SelenideElement fieldSerialNumber = $x("//input[@data-placeholder='Серийный №']");
    private static SelenideElement fieldModel = $x("//span[contains(text(), 'Модель')]");
    private static SelenideElement fieldType = $x("//span[contains(text(), 'Тип')]");
    private static SelenideElement buttonCheckBox = $x("//mat-checkbox");
    private static SelenideElement fieldCreator = $x("//span[contains(text(), 'Производитель')]");
    private static SelenideElement fieldPerformance = $x("//app-input-unit[.//span[contains(text(), 'Производительность')]]//input");
    private static SelenideElement fieldShakerPanel = $x("//input[@data-placeholder='Число ситовых панелей']");
    private static SelenideElement fieldDeckQuantity = $x("//input[@data-placeholder='Количество дек']");
    private static SelenideElement fieldOwner = $x("//span[contains(text(), 'Владелец')]");
    private static SelenideElement fieldComment = $x("//textarea[@data-placeholder='Комментарий']");
    private static SelenideElement matCellShakerPage = $x("//mat-row[1]//mat-cell[3]//div[contains(text(), '666')]");

    @Step("Нажатие на кнопку создания Вибрационного сита")
    public static void clickCreateButtonShaker () {
        $(createButton).click();
    }

    @Step("Ввод данных Серийный №")
    public static void sendDataInputSerialNumber (String value) {
        $(fieldSerialNumber).sendKeys(value);
    }

    @Step("Выбор Модели")
    public static void selectModel (String value) {
        $(fieldModel).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Выбор Типа")
    public static void selectType (String value) {
        $(fieldType).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Нажатие чекбокса - Ситогидроциклонная установка")
    public static void clickOnCheckbox () {
        $(buttonCheckBox).click();
    }

    @Step("Выбор Производителя")
    public static void selectCreator (String value) {
        $(fieldCreator).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Ввод данных Производительность")
    public static void sendDataInputPerformance (String value) {
        $(fieldPerformance).sendKeys(value);
    }

    @Step("Ввод данных Число ситовых панелей")
    public static void sendDataInputShakerPanel (String value) {
        $(fieldShakerPanel).sendKeys(value);
    }

    @Step("Ввод данных Количества дек")
    public static void sendDataInputDeckQuantity (String value) {
        $(fieldDeckQuantity).sendKeys(value);
    }

    @Step("Выбор Владельца")
    public static void selectOwner (String value) {
        $(fieldOwner).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Ввод данных Комментария")
    public static void sendDataInputComment (String value) {
        $(fieldComment).sendKeys(value);
    }

    @Step("Проверка записи в таблице")
    public static void matCellCheckSaveResultShakerPage(String value) {
        $(matCellShakerPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickShakerPage() {
        $(matCellShakerPage).click();
    }
}