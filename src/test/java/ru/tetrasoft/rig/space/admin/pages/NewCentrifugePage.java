package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewCentrifugePage {

    private static SelenideElement buttonCreate = $x("//a[@href='/admin/rig-equipment/centrifuges/new']");
    private static SelenideElement fieldSerialNumber = $x("//input[@data-placeholder='Серийный №']");
    private static SelenideElement fieldModel = $x("//span[contains(text(), 'Модель')]");
    private static SelenideElement fieldType = $x("//span[contains(text(), 'Тип')]");
    private static SelenideElement fieldCreator = $x("//span[contains(text(), 'Производитель')]");
    private static SelenideElement fieldMaxSpeed = $x("//app-input-unit[.//span[contains(text(), 'Max скорость вращ.')]]//input");
    private static SelenideElement fieldPerformance = $x("//app-input-unit[.//span[contains(text(), 'Производительность')]]//input");
    private static SelenideElement fieldOwner = $x("//span[contains(text(), 'Владелец')]");
    private static SelenideElement fieldComment = $x("//textarea[@data-placeholder='Комментарий']");
    private static SelenideElement matCellCentrifugePage = $x("//mat-row[1]//mat-cell[3]//div[contains(text(), '666')]");

    @Step("Нажатие на кнопку создания Центрифуги")
    public static void clickCreateButtonCentrifuge () {
        $(buttonCreate).click();
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

    @Step("Ввод данных Маx скорости вращения")
    public static void sendDataInputMaxSpeed (String value) {
        $(fieldMaxSpeed).sendKeys(value);
    }

    @Step("Ввод данных Производительность")
    public static void sendDataInputPerformance (String value) {
        $(fieldPerformance).sendKeys(value);
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
    public static void matCellCheckSaveResultCentrifugePage(String value) {
        $(matCellCentrifugePage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickCentrifugePage() {
        $(matCellCentrifugePage).click();
    }
}