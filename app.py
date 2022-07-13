import nltk
import json

nltk.data.path.append("/var/task")


def handler(event, context):
    tokens = nltk.word_tokenize(event["sentence"])

    return {
        "statusCode": 200,
        "body": json.dumps({"tokens": tokens})
    }
