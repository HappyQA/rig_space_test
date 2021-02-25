package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewBopPage {

    private static SelenideElement createButton = $x("//a[@href='/admin/rig-equipment/bops/new']");
    private static SelenideElement fieldWorkPressure = $x("//app-input-unit[.//span[contains(text(), 'Рабочее давление')]]//input");
    private static SelenideElement fieldConditionalMethod = $x("//app-input-unit[.//span[contains(text(), 'Условный проход')]]//input");
    private static SelenideElement fieldDescription = $x("//input[@data-placeholder='Описание']");
    private static SelenideElement fieldModel = $x("//span[contains(text(), 'Модель')]");
    private static SelenideElement fieldCreator = $x("//span[contains(text(), 'Производитель')]");
    private static SelenideElement fieldOwner = $x("//span[contains(text(), 'Владелец')]");
    private static SelenideElement fieldComment = $x("//textarea[@data-placeholder='Комментарий']");
    private static SelenideElement matCellBopPage = $x("//mat-row[1]//mat-cell[3]//div[contains(text(), 'Тест')]");

    @Step("Нажатие на кнопку создания ПВО")
    public static void clickCreateButtonBop () {
        $(createButton).click();
    }

    @Step("Ввод данных Рабочее давление")
    public static void sendDataInputWorkPressure (String value) {
        $(fieldWorkPressure).sendKeys(value);
    }

    @Step("Ввод данных Условный проход")
    public static void sendDataInputConditionalMethod (String value) {
        $(fieldConditionalMethod).sendKeys(value);
    }

    @Step("Ввод данных Описание")
    public static void sendDataInputDescription (String value) {
        $(fieldDescription).sendKeys(value);
    }

    @Step("Выбор Модели")
    public static void selectModel (String value) {
        $(fieldModel).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Выбор Производителя")
    public static void selectCreator (String value) {
        $(fieldCreator).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
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
    public static void matCellCheckSaveResultBopPage(String value) {
        $(matCellBopPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickBopPage() {
        $(matCellBopPage).click();
    }
}