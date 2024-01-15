from .api import *
from .utils import labeler
import argparse
from pprint import pprint

def main():
    parser = argparse.ArgumentParser(description="Model management script")

    # Define top-level actions
    subparsers_action = parser.add_parser(dest="action",help="Top level actions")

    args = parser.parse_args()

    # Define the things that we can do with the CLI
    if args.action == "model":
        if args.subaction == "list":
            models = list_models()
            pprint (models)
        elif args.subaction == "summarize":
            model_summary = get_model_summary(args.model_name)
            pprint (model_summary)
        elif args.subaction == "download":
            downloaded_model = download_model(args.model_name,args.model_format)
            pprint (downloaded_model)
        else:
            print ("Invalid argument for 'model'")

    elif args.action == "classify":
        labels = args.labels.split(",")
        pass
    elif args.action == "detect":
        pprint ("detect")
        pass

    elif args.action == "user":
        pprint ("user")
        pass

    elif args.action == "utils":
        if args.subaction == "label":
            labels = args.labels.split(",")
            pprint (labels)
        else:
            print ("Invalid argument for 'utils'")
    else:
        print ("Invalid action")
    return None

if __name__=="__main__":
    main()


# Command line of ffmpeg

