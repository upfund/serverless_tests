"""
A simple Lambda function that has simplejson as a function level dependency
And uses code from common_files/common2.py
"""
from jinja2Func.function import outside_function


def handler(event=None, context=None):
    outside_function()
    used_func()
    print("Hello AWS!")
    print("event = {}".format(event))
    return {
        'statusCode': 200,
    }

def none_used_func(event=None, context=None):
    return "none_used_func"

def used_func(event=None, context=None):
    return "used_func"

if __name__ == "__main__":
    handler()
