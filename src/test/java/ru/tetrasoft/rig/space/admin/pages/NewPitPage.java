package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewPitPage {

    private static SelenideElement createButton = $x("//a[@href='/admin/rig-equipment/pits/new']");
    private static SelenideElement fieldDescription = $x("//input[@data-placeholder='Описание']");
    private static SelenideElement fieldOwner = $x("//span[contains(text(), 'Владелец')]");
    private static SelenideElement fieldType = $x("//span[contains(text(), 'Тип')]");
    private static SelenideElement fieldCapacity = $x("//input[@data-placeholder='Вместимость']");
    private static SelenideElement fieldDeadZone = $x("//input[@data-placeholder='Мёртвая зона']");
    private static SelenideElement fieldComment = $x("//textarea[@data-placeholder='Комментарий']");
    private static SelenideElement matCellPitPage = $x("//mat-row[1]//mat-cell[2]//div[contains(text(), 'Описание')]");

    @Step("Нажатие на кнопку создания Емкостного оборудование")
    public static void clickCreateButtonPit () {
        $(createButton).click();
    }

    @Step("Ввод данных Описание")
    public static void sendDataInputDescription (String value) {
        $(fieldDescription).sendKeys(value);
    }

    @Step("Выбор Владельца")
    public static void selectOwner (String value) {
        $(fieldOwner).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Выбор Типа")
    public static void selectType (String value) {
        $(fieldType).click();
        $x("//div[contains(text(), '"+ value +"')]").click();
    }

    @Step("Ввод данных Вместимость")
    public static void sendDataInputCapacity (String value) {
        $(fieldCapacity).sendKeys(value);
    }

    @Step("Ввод данных Мертвая зона")
    public static void sendDataInputDeadZone (String value) {
        $(fieldDeadZone).sendKeys(value);
    }

    @Step("Ввод данных Комментария")
    public static void sendDataInputComment (String value) {
        $(fieldComment).sendKeys(value);
    }

    @Step("Проверка записи в таблице")
    public static void matCellCheckSaveResultPitPage(String value) {
        $(matCellPitPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на запись в таблице")
    public static void matCellClickPitPage() {
        $(matCellPitPage).click();
    }
}