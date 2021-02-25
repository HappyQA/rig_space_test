package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewDegasserPage {

    private static SelenideElement createButton = $x("//a[@href='/admin/rig-equipment/degassers/new']");
    private static SelenideElement fieldSerialNumber = $x("//input[@data-placeholder='Серийный №']");
    private static SelenideElement fieldModel = $x("//span[contains(text(), 'Модель')]");
    private static SelenideElement fieldType = $x("//span[contains(text(), 'Тип')]");
    private static SelenideElement fieldCreator = $x("//span[contains(text(), 'Производитель')]");
    private static SelenideElement fieldPerformance = $x("//app-input-unit[.//span[contains(text(), 'Производительность')]]//input");
    private static SelenideElement fieldPerformanceOnGas = $x("//app-input-unit[.//span[contains(text(), 'Производительность по газу')]]//input");
    private static SelenideElement fieldLength = $x("//app-input-unit[.//span[contains(text(), 'Длина')]]//input");
    private static SelenideElement fieldHeight = $x("//app-input-unit[.//span[contains(text(), 'Высота')]]//input");
    private static SelenideElement fieldOwner = $x("//span[contains(text(), 'Владелец')]");
    private static SelenideElement fieldComment = $x("//textarea[@data-placeholder='Комментарий']");
    private static SelenideElement matCellDegasserPage = $x("//mat-row[1]//mat-cell[3]//div[contains(text(), '666')]");

    @Step("Нажатие на кнопку создания Дегазатора")
    public static void clickCreateButtonDegasser () {
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

    @Step("Выбор Производителя")
    public static void selectCreator (String value) {
        $(fieldCreator).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Ввод данных Производительность")
    public static void sendDataInputPerformance (String value) {
        $(fieldPerformance).sendKeys(value);
    }

    @Step("Ввод данных Производительность на газу")
    public static void sendDataInputPerformanceOnGas (String value) {
        $(fieldPerformanceOnGas).sendKeys(value);
    }

    @Step("Ввод данных Длины")
    public static void sendDataInputLength (String value) {
        $(fieldLength).sendKeys(value);
    }

    @Step("Ввод данных Высота")
    public static void sendDataInputHeight (String value) {
        $(fieldHeight).sendKeys(value);
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
    public static void matCellCheckSaveResultDegasserPage(String value) {
        $(matCellDegasserPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickDegasserPage() {
        $(matCellDegasserPage).click();
    }
}