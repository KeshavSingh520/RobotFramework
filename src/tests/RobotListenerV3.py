from robot.libraries.BuiltIn import BuiltIn


class RobotListenerV3:

    ROBOT_LIBRARY_SCOPE = "GLOBAL"
    ROBOT_LISTENER_API_VERSION = 3

    def __init__(self):
        pass

    def start_suite(self, suite, result):
        print("Suite Started")

    def start_test(self, test, result):
        print("Test is started")

    def end_test(self, test, result):
        if not result.passed:
            print('Test "%s" failed: %s' % (result.name, result.message))

    def end_suite(self, suite, result):
        print("Suite Ended")

    def log_message(self, message):
        pass

    def message(self, message):
        pass

    def debug_file(self, path):
        pass

    def output_file(self, path):
        pass

    def xunit_file(self, path):
        pass

    def log_file(self, path):
        pass

    def report_file(self, path):
        pass

    def close(self):
        pass