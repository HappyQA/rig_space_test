package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.*;

import static ru.tetrasoft.rig.space.admin.pages.NewWellPage.*;
import static ru.tetrasoft.rig.space.admin.pages.NewWellPage.sendDataInputWellNumber;
import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDWellTest extends BaseTest {

    @Feature("Тестирование функции создания скважины")
    @Tag("create")
    @Test
    @Description("Создание записи о скважине")
    public void createWell () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openWellPage();
        clickCreateButton();
        sendDataInputWellNumber("666");
        sendDataInputWellClusterNumber("777");
        sendDataInputWellQuantity("5");
        sendDataInputWellPositionCluster("1");
        selectWellborn("Ковыктинское");
        selectSquare("Ковыктинская");
        selectLicensePlace("Ковыктинский");
        selectWellPlaceHolder("Газпром ПАО");
        selectProject("Восточная Сибирь");
        selectStatus("В бурении");
        sendDataInputUwi("777");
        selectCategory("Тестовая категория");
        selectTargetLayer("Тестовый пласт");
        selectFluidType("Тестовый флюид");
        selectAppointment("Разведочная");
        selectType("Вертикальная");
        selectConstruction("С хвостовиком");
        selectRadioType();
        sendDataInputLatitude("777");
        sendDataInputLongitude("666");
        selectTimeZone("+00:00 (Западная Европа)");
        sendDataInputDescription("Тест");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестированиие функции обновления записи о скважине")
    @Tag("update")
    @Test
    @Description("Обновление записи о скважине")
    public void updateWell () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openWellPage();
        matCellCheckSaveResultWellPage("Ковыктинское");
        matCellClickWellPage();
        clearInputField("Номер скважины");
        sendDataInputWellNumber("888");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестированиие функции удаления записи о скважине")
    @Tag("delete")
    @Test
    @Description("Удаление записи о скважине")
    public void deleteWell () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openWellPage();
        matCellCheckSaveResultWellPage("Ковыктинское");
        matCellClickWellPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Ковыктинское");
    }
}