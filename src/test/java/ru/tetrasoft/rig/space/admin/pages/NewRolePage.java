package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewRolePage {

    private static SelenideElement fieldName = $x("//input[@data-placeholder='Название']");
    private static SelenideElement fieldDescription = $x("//textarea[@data-placeholder='Описание']");
    private static SelenideElement matCellRolesPage = $x("//mat-row[2]//mat-cell//div[contains(text(), 'роль')]");

    @Step("Ввод наименования Роли")
    public static void sendDataNameRole (String roleName) {
        $(fieldName).sendKeys(roleName);
    }

    @Step("Ввод наименования Описание")
    public static void sendDataDescriptionRole (String roleDescription) {
        $(fieldDescription).sendKeys(roleDescription);
    }

    @Step("Проверка сохранения роли")
    public static void matCellCheckSaveRolePage (String value) {
        $(matCellRolesPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на раннее созданную роль в таблице")
    public static void matCellClickRolePage () {
        $(matCellRolesPage).click();
    }
}