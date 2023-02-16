try:

    import json
    import sys
    import requests
    print("All imports ok ...")
except Exception as e:
    print("Error Imports : {} ".format(e))


def lambda_handler(event, context):

    print("My function 2!")
    print("event = {}".format(event))
    return {
        'statusCode': 200,
    }