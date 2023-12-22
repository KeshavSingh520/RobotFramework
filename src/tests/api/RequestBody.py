from SeleniumLibrary.base import keyword


class RequestBody:
    text = "Hi"
    # name = ""
    # description = ""
    # public = True
    reqbody = {}

    @keyword
    def create_Playlist_RequestBody(self, name: str, description: str, public: bool) -> str:
        self.reqbody = {
            "name" : name,
            "description" : description,
            "public" : public
        }
        print("this is reqbody",self.reqbody)
        return self.reqbody

    # @keyword
    # def get_Value_By_Text(self, name) -> str:
    #     return name
