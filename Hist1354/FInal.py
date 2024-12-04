!pip install skimage
from skimage import io
import matplotlib.pyplot as plt
import pandas as pd

df = pd.read_csv('~/Downloads/artwork_dataset.csv')

df['jpg url'][0]