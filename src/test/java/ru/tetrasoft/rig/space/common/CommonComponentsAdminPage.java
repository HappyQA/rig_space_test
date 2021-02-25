package ru.tetrasoft.rig.space.common;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Configuration.*;
import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class CommonComponentsAdminPage {

    private static SelenideElement openNavigationMenuAdminButton = $x("//button[@id='root-side-menu__button']");
    private static SelenideElement buttonSave = $x("//button[@type='submit']");
    private static SelenideElement buttonDelete = $x("//button[@type='button']");
    private static SelenideElement buttonCancel = $x("//button[@type='button']");
    private static SelenideElement checkSaveResultPopup = $x("//span[contains (text(), 'Изменения сохранены')]");
    private static SelenideElement buttonExit = $x("//span[contains(text(), 'Выйти')]");
    private static SelenideElement userPage = $x("//span[contains(text(),'Пользователи')]");
    private static SelenideElement wellPage = $x("//span[contains(text(),'Скважины')]");
    private static SelenideElement rigPage = $x("//span[contains(text(),'Буровые установки')]");
    private static SelenideElement rigEquipmentPage = $x("//span[contains(text(),'Агрегаты буровых установок')]");
    private static SelenideElement crewPage = $x("//span[contains(text(),'Буровые бригады')]");
    private static SelenideElement dictionaryPage = $x("//span[contains(text(),'Словари')]");
    private static SelenideElement tabUsers = $x("//a[contains(text(), 'Пользователи')]");
    private static SelenideElement tabSecurityGroups = $x("//a[contains(text(), 'Группы безопасности')]");
    private static SelenideElement tabRoles = $x("//a[contains(text(), 'Роли')]");
    private static SelenideElement createButtonNewUser = $x("//a[@href='/admin/manage/users/new']");
    private static SelenideElement createButtonNewSecurityGroup = $x("//a[@href='/admin/manage/security-groups/new']");
    private static SelenideElement createButtonNewRole = $x("//a[@href='/admin/manage/roles/new']");
    private static SelenideElement buttonPitMenu = $x("//a[@href='/admin/rig-equipment/pits']");
    private static SelenideElement buttonPumpMenu = $x("//a[@href='/admin/rig-equipment/pumps']");
    private static SelenideElement buttonDegasserMenu = $x("//a[@href='/admin/rig-equipment/degassers']");
    private static SelenideElement buttonShakerMenu = $x("//a[@href='/admin/rig-equipment/shakers']");
    private static SelenideElement buttonHydroclonesMenu = $x("//a[@href='/admin/rig-equipment/hydroclones']");
    private static SelenideElement buttonCentrifugesMenu = $x("//a[@href='/admin/rig-equipment/centrifuges']");
    private static SelenideElement buttonBopMenu = $x("//a[@href='/admin/rig-equipment/bops']");
    private static SelenideElement matEmptyCell = $x("//*");
    private static SelenideElement clickOnDeleteButtonInDialog = $x("//mat-dialog-container//button[2]");

    @Step("Открытие страницы Пользователи")
    public static void openUserPage() {
        $(userPage).click();
    }

    @Step("Открытие страницы Скважины")
    public static void openWellPage() {
        $(wellPage).click();
    }

    @Step("Открытие страницы Буровые установки")
    public static void openRigPage() {
        $(rigPage).click();
    }

    @Step("Открытие страницы Агрегаты БУ")
    public static void openRigEquipmentPage() {
        $(rigEquipmentPage).click();
    }

    @Step("Открытие страницы Буровые бригады")
    public static void openCrewPage() {
        $(crewPage).click();
    }

    @Step("Открытие страницы Словари")
    public static void openDictionaryPage() {
        $(dictionaryPage).click();
    }

    @Step("Открытие навигационного меню в модуле Admin")
    public static void openNavigationMenuAdmin() {
        $(openNavigationMenuAdminButton).click();
    }

    @Step("Нажатие на кнопку - Сохранить")
    public static void clickOnButtonSave() {
        $(buttonSave).click();
    }

    @Step("Нажатие на пноку Отменить")
    public static void clickOnCancelButton() {
        $(buttonCancel).click();
    }

    @Step("Проверка сохранения создания / редактирования записи")
    public static void checkSaveResultPopup() {
        timeout = 20000;
        $(checkSaveResultPopup).shouldBe(visible);
    }

    @Step("Нажатие на кнопку Выйти")
    public static void clickOnButtonExit() {
        $(buttonExit).click();
    }

    @Step("Нажатие на табу Пользователи")
    public static void clickTabUsers() {
        $(tabUsers).click();
    }

    @Step("Нажатие на табу Группы безопасности")
    public static void clickTabSecurityGroups() {
        $(tabSecurityGroups).click();
    }

    @Step("Нажатие на табу Роли")
    public static void clickTabRoles() {
        $(tabRoles).click();
    }

    @Step("Нажатие на кнопку Создания + в табе Пользователи")
    public static void clickOnButtonPlusUsers() {
        $(createButtonNewUser).click();
    }

    @Step("Нажатие на кнопку Создания + в табе Группы безопасности")
    public static void clickOnButtonPlusSecurityGroups() {
        $(createButtonNewSecurityGroup).click();
    }

    @Step("Нажатие на кнопку Создания + в табе Роли")
    public static void clickOnButtonPlusRoles() {
        $(createButtonNewRole).click();
    }

    @Step("Навигационное меню / Ёмкостное оборудование")
    public static void clickOnNewPitMenu() {
        $(buttonPitMenu).click();
    }

    @Step("Навигационное меню / Буровые насосы")
    public static void clickOnNewPumpMenu() {
        $(buttonPumpMenu).click();
    }

    @Step("Навигационное меню / Дегазаторы")
    public static void clickOnNewDegasserMenu() {
        $(buttonDegasserMenu).click();
    }

    @Step("Навигационное меню / Вибрационные сита")
    public static void clickOnNewShakerMenu() {
        $(buttonShakerMenu).click();
    }

    @Step("Навигационное меню / Гидроциклоны")
    public static void clickOnNewHydroclonesMenu() {
        $(buttonHydroclonesMenu).click();
    }

    @Step("Навигационное меню / Центрифуги")
    public static void clickOnNewCentrifugesMenu() {
        $(buttonCentrifugesMenu).click();
    }

    @Step("Навигационное меню / ПВО")
    public static void clickOnNewBopsMenu() {
        $(buttonBopMenu).click();
    }

    @Step("Нажатиие на кнопку Удалить")
    public static void clickOnDeleteButton() {
        $(buttonDelete).click();
    }

    @Step("Отчистка поля по атрибуту DataPlaceHolder")
    public static void clearInputField(String name) {
        $x("//input[@data-placeholder='" + name + "']").clear();
    }

    @Step("Проверка что запись в таблицие отсутствует")
    public static void matCellCheckDeleteResult(String value) {
        $(matEmptyCell).shouldNotHave(Condition.text(value));
    }

    @Step("Нажатие на кнопку Удалить в диалоговом окне")
    public static void clickOnDeleteButtonInDialogContainer () {
        $(clickOnDeleteButtonInDialog).click();
    }
}