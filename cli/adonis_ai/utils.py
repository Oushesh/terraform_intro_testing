import os
import csv
import json
import time
import zipfile
from tqdm import tqdm

import onnx
import onnxruntime as ort

import numpy as np
from PIL import Image
from ast import literal_eval

from .api import *


def load_image(image_path,img_height=224,img_width=224):
    pass

class Adonis_AI(object):
    def __init__(self,model_assets_path):
        self.model_file = None
        self.model_path = None
        metadata_file = os.path.join(model_assets_path,"metadata.csv")


        # Pass model metadata from metadata.csv
        pass