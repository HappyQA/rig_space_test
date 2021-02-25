package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewPumpPage {

    private static SelenideElement createButton = $x("//a[@href='/admin/rig-equipment/pumps/new']");
    private static SelenideElement fieldInventoryNumber = $x("//input[@data-placeholder='Инвентарный №']");
    private static SelenideElement fieldModel = $x("//span[contains(text(), 'Модель')]");
    private static SelenideElement fieldType = $x("//span[contains(text(), 'Тип')]");
    private static SelenideElement buttonCheckBox = $x("//mat-checkbox");
    private static SelenideElement fieldCreator = $x("//span[contains(text(), 'Производитель')]");
    private static SelenideElement fieldQuantityCylinder = $x("//input[@data-placeholder='Количество цилиндров']");
    private static SelenideElement fieldLengthStep = $x("//app-input-unit[.//span[contains(text(), 'Длина хода')]]//input");
    private static SelenideElement fieldStockDiameter = $x("//app-input-unit[.//span[contains(text(), 'Диаметр штока')]]//input");
    private static SelenideElement fieldValueEfficiency = $x("//input[@data-placeholder='Объёмный КПД']");
    private static SelenideElement fieldOwner = $x("//span[contains(text(), 'Владелец')]");
    private static SelenideElement fieldComment = $x("//textarea[@data-placeholder='Комментарий']");
    private static SelenideElement matCellPumpPage = $x("//mat-row[1]//mat-cell[3]//div[contains(text(), '666')]");

    @Step("Нажатие на кнопку создания Бурового насоса")
    public static void clickCreateButtonPump () {
        $(createButton).click();
    }

    @Step("Ввод данных Инвентарный №")
    public static void sendDataInputInventoryNumber (String value) {
        $(fieldInventoryNumber).sendKeys(value);
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

    @Step("Нажатие чекбокса - Двойного действия")
    public static void clickOnCheckbox () {
        $(buttonCheckBox).click();
    }

    @Step("Выбор Производителя")
    public static void selectCreator (String value) {
        $(fieldCreator).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Ввод данных Количества цилиндров")
    public static void sendDataInputQuantityCylinder (String value) {
        $(fieldQuantityCylinder).sendKeys(value);
    }

    @Step("Ввод данных Длины хода")
    public static void sendDataInputLengthStep (String value) {
        $(fieldLengthStep).sendKeys(value);
    }

    @Step("Ввод данных Диаметр штока")
    public static void sendDataInputStockDiameter (String value) {
        $(fieldStockDiameter).sendKeys(value);
    }

    @Step("Ввод данных Объемного КПД")
    public static void sendDataInputValueEfficiency (String value) {
        $(fieldValueEfficiency).sendKeys(value);
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
    public static void matCellCheckSaveResultPumpPage (String value) {
        $(matCellPumpPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickPumpPage() {
        $(matCellPumpPage).click();
    }
}