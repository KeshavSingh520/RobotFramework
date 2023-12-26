from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class CustomKeywordsHomePage:

    def __init__(self):
        self.seleniumLib = BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def get_all_links_custom(self, locator):
        lstLinks = self.seleniumLib.get_webelements(locator)
        linktexts = []
        for link in lstLinks:
            linktexts.append(link.text)
        return linktexts
