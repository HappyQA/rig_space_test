package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewDictionariesPage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CreateEquipmentDictionariesTest extends BaseTest {

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Модели буровых насосов")
    public void createEquipmentDictionaryItemPumpModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        clickCreateButton();
        sendDataInputDictionary("Тестовый насос");
        clickOnButtonSave();
        checkSaveResult("Тестовый насос");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Модели вибрационных сит")
    public void createEquipmentDictionaryItemShakerModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentShakerModelDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовое сито 2");
        clickOnButtonSave();
        checkSaveResult("Тестовое сито 2");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Модели гидроциклонов")
    public void createEquipmentDictionaryItemHydrocloneModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentHydrocloneModelDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый гидроциклон");
        clickOnButtonSave();
        checkSaveResult("Тестовый гидроциклон");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Модели дегазаторов")
    public void createEquipmentDictionaryItemDegasserModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentDegasserModelDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый дегазатор");
        clickOnButtonSave();
        checkSaveResult("Тестовый дегазатор");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Модели ПВО")
    public void createEquipmentDictionaryItemBopModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentBopModelDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовая модель 2");
        clickOnButtonSave();
        checkSaveResult("Тестовая модель 2");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Модели центрифуг")
    public void createEquipmentDictionaryItemCentrifugesModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentCentrifugesModelDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовая центрифуга");
        clickOnButtonSave();
        checkSaveResult("Тестовая центрифуга");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Модели бэлементов ПВО")
    public void createEquipmentDictionaryItemBopComponentModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentBopComponentModelDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый элемент ПВО");
        clickOnButtonSave();
        checkSaveResult("Тестовый элемент ПВО");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Производители оборудования")
    public void createEquipmentDictionaryItemAggregateManufactureModel () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentAggregateManufacturerDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый производитель");
        clickOnButtonSave();
        checkSaveResult("Тестовый производитель");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Типы вибрационных сит")
    public void createEquipmentDictionaryItemShakerType () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentShakerTypeDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип сита");
        clickOnButtonSave();
        checkSaveResult("Тестовый тип сита");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Типы гидроциклонов")
    public void createEquipmentDictionaryItemHydrocloneType () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentHydrocloneTypeDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип гидроциклона");
        clickOnButtonSave();
        checkSaveResult("Тестовый тип гидроциклона");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Типы дегазаторов")
    public void createEquipmentDictionaryItemDegassersType () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentDeggaserTypeDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип дегазатора");
        clickOnButtonSave();
        checkSaveResult("Тестовый тип дегазатора");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Типы емкостей")
    public void createEquipmentDictionaryItemPitsType () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentPitTypeDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип емкости");
        clickOnButtonSave();
        checkSaveResult("Тестовый тип емкости");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Типы центрифуг")
    public void createEquipmentDictionaryItemCentrifugesType () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentCentrifugesTypeDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип центрифуги");
        clickOnButtonSave();
        checkSaveResult("Тестовый тип центрифуги");
    }

    @Feature("Тестирование функции создания записей в справочниках Оборудование")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Оборудование - Типы элементов ПВО")
    public void createEquipmentDictionaryItemBopComponentType () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openEquipmentDictionaryTab();
        openEquipmentBopComponentTypeDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип элемента ПВО");
        clickOnButtonSave();
        checkSaveResult("Тестовый тип элемента ПВО");
    }
}