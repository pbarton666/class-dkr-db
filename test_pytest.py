from utils import addme, multme, subme
def test_add():
    assert addme(1, 2) == 3
def test_mult():
    assert multme(3, 4) == 12

def test_sub():
    assert subme(5, 2) == 3