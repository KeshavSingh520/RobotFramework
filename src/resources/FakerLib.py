from faker import Faker


class FakeDataUtility:

    def __init__(self):
        self.fake = Faker()

    def get_name(self):
        return self.fake.name()


fake1 = FakeDataUtility()
print(fake1.get_name())
