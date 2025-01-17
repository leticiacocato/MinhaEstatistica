import pandas as pd 
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import pyplot as plt
from scipy.cluster import hierarchy
import plotly.figure_factory as ff # interactive dendogram
import scipy.cluster.hierarchy as sch # interactive dendogram

# https://python-graph-gallery.com/dendrogram/


USArrests = pd.read_csv('path_to_your_dataset/USArrests.csv')
del USArrests['UrbanPop']
USArrests.set_index('Unnamed: 0', inplace=True)
USArrests.index.name = None
print(USArrests)

Z = hierarchy.linkage(USArrests, 'average')
# labels is an n-sized sequence, with n == Z.shape[0] + 1.
hierarchy.dendrogram(Z, leaf_rotation=90, leaf_font_size=6, labels=USArrests.index)

plt.title('Dendrogram of Violent Crime Rates by US State (Average Linkage)')
plt.show()



### INTERACTIVE DENDOGRAM ###
Z = sch.linkage(USArrests, method='average')
#print("Linkage matrix shape:", Z.shape) = 49
#print("Number of labels:", len(USArrests.index)) = 50
labels = USArrests.index.tolist()
labels_for_dendrogram = labels[:-1] # Remove the last label to match the number of clusters in Z (49 clusters)
fig = ff.create_dendrogram(Z, labels = labels_for_dendrogram)
fig.update_layout(
    xaxis=dict(tickangle=-90), 
    title="Interactive Dendrogram of Violent Crime Rates by US State"
)
fig.show()




## BONUS SUNBURST
#import plotly.express as px
#from sklearn.cluster import KMeans
# Use k-means clustering to divide the states into 3 regions (k=3)
#kmeans = KMeans(n_clusters=3, random_state=42)

# Fit the clustering model on the 'Murder' column (or you can choose multiple columns like 'Murder', 'Assault', 'Rape')
#USArrests['Region'] = kmeans.fit_predict(USArrests[['Murder']])

# Map the cluster numbers to human-readable region names
#region_mapping = {0: 'Region1', 1: 'Region2', 2: 'Region3'}
#USArrests['Region'] = USArrests['Region'].map(region_mapping)

# Create the hierarchy DataFrame with regions as Parent
#hierarchy_df = pd.DataFrame({
#    'State': USArrests.index,   # States
#    'Parent': USArrests['Region'],  # Regions as Parent
#    'Murder': USArrests['Murder'],  # Murder rate as value
#})

# Create the Sunburst plot
#fig = px.sunburst(
#    hierarchy_df,
#    path=['Parent', 'State'],  # Hierarchical path (Region -> State)
#    values='Murder',           # Murder rate as the values
#    title="Interactive Dendrogram of USArrests by Region"
#)

# Show the plot
#fig.show()