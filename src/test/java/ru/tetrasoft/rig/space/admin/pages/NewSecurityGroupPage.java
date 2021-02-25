package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewSecurityGroupPage {

    private static SelenideElement fieldName = $x("//input[@data-placeholder='Название']");
    private static SelenideElement fieldDescription = $x("//textarea[@data-placeholder='Описание']");
    private static SelenideElement matCellSecurityGroupsPage = $x("//mat-row[2]//mat-cell//div[contains(text(), 'группа')]");

    @Step("Ввод наименования Группы безопасности")
    public static void sendDataNameSecurityGroup (String groupName) {
        $(fieldName).sendKeys(groupName);
    }

    @Step("Ввод описания Группы безопасности")
    public static void sendDataDescriptionSecurityGroup (String groupDescription) {
        $(fieldDescription).sendKeys(groupDescription);
    }

    @Step("Проверка сохранения группы безопасности")
    public static void matCellCheckSaveResultSecurityGroupsPage (String value) {
        $(matCellSecurityGroupsPage).shouldHave(Condition.text(value));
    }

    @Step("Нажатие на раннее созданную группу безопасности в таблице")
    public static void matCellClickSecurityGroupsPage () {
        $(matCellSecurityGroupsPage).click();
    }
}