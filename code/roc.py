#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
features=pd.read_csv("feat_ch1_1.csv")
features.columns


# In[74]:


feat=features[['IEMG_1', 'IEMG_2', 'MAV_1', 'MAV_2', 'SSI_1', 'SSI_2', 'VAR_1',
       'VAR_2', 'RMS_1', 'RMS_2', 'AAC_1', 'AAC_2', 'WL_1', 'WL_2', 'ZC_1',
       'ZC_2', 'WA_1', 'WA_2', 'SSC_1', 'SSC_2', 'LD_1', 'LD_2', 'DSDAV_1',
       'DASDV_2', 'EMAV_1', 'EMAV_2', 'EWL_1', 'EWL_2', 'MAV1_1', 'MAV1_2',
       'MAV2_1', 'MAV2_2', 'MFL_1', 'MFL_2', 'MYOP_1', 'MYOP_2', 'FR_1',
       'FR_2', 'TTP_1', 'TTP_2', 'MNP_1', 'MNP_2', 'MFN_1', 'MFN_2', 'MFD_1',
       'MFD_2', 'MMFD_1', 'MFMD_2', 'MMFN_1', 'MMFN_2']]
import numpy as np
x=feat
y=np.asarray(features['movement'])


# In[75]:


from sklearn.preprocessing import MinMaxScaler
scalar= MinMaxScaler()
x=scalar.fit_transform(x)
from sklearn.decomposition import PCA
pca=PCA(n_components=None,svd_solver='auto')
PrincipalComponents=pca.fit_transform(x)
x=PrincipalComponents


# In[81]:


from sklearn.model_selection import train_test_split

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=12)


# In[82]:


from sklearn.ensemble import RandomForestClassifier

classifier = RandomForestClassifier(max_depth=50, random_state=7)
classifier.fit(x_train, y_train)
pred = classifier.predict(x_test)
from sklearn.metrics import classification_report 
print(classification_report(y_test,pred))


# In[83]:


import matplotlib.pyplot as plt
from sklearn import datasets
from sklearn.metrics import roc_curve,auc
from scipy import interp
from itertools import cycle


# In[84]:


n_classes=6


# In[85]:


t1=sum(x==0 for x in pred-y_test)/len(pred)


# In[86]:


fpr = dict()
tpr = dict()
roc_auc = dict()

for i in range(n_classes):
    fpr[i], tpr[i], _ = roc_curve(np.array(pd.get_dummies(y_test))[:, i], np.array(pd.get_dummies(pred))[:, i])
    roc_auc[i] = auc(fpr[i], tpr[i])


# In[87]:


all_fpr = np.unique(np.concatenate([fpr[i] for i in range(n_classes)]))

mean_tpr = np.zeros_like(all_fpr)
for i in range(n_classes):
    mean_tpr += interp(all_fpr, fpr[i], tpr[i])

mean_tpr /= n_classes


# In[88]:


from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=2)
classifier2 = DecisionTreeClassifier()
classifier2.fit(x_train, y_train)
pred2 = classifier2.predict(x_test)
from sklearn.metrics import classification_report 
print(classification_report(y_test,pred2))


# In[89]:


t2=sum(x==0 for x in pred2-y_test)/len(pred2)
fpr2= dict()
tpr2= dict()
roc_auc2 = dict()

for i in range(n_classes):
    fpr2[i], tpr2[i], _ = roc_curve(np.array(pd.get_dummies(y_test))[:, i], np.array(pd.get_dummies(pred2))[:, i])
    roc_auc2[i] = auc(fpr2[i], tpr2[i])


# In[90]:


all_fpr2 = np.unique(np.concatenate([fpr2[i] for i in range(n_classes)]))

mean_tpr2 = np.zeros_like(all_fpr2)
for i in range(n_classes):
    mean_tpr2 += interp(all_fpr2, fpr2[i], tpr2[i])

mean_tpr2 /= n_classes


# In[96]:


from sklearn.model_selection import train_test_split

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=2)
from sklearn.neighbors import KNeighborsClassifier
classifier3 = KNeighborsClassifier(n_neighbors=1)
classifier3.fit(x_train, y_train)
pred3= classifier3.predict(x_test)
from sklearn.metrics import classification_report 
print(classification_report(y_test,pred3))


# In[97]:


t3=sum(x==0 for x in pred3-y_test)/len(pred3)
fpr3= dict()
tpr3= dict()
roc_auc3 = dict()

for i in range(n_classes):
    fpr3[i], tpr3[i], _ = roc_curve(np.array(pd.get_dummies(y_test))[:, i], np.array(pd.get_dummies(pred3))[:, i])
    roc_auc3[i] = auc(fpr3[i], tpr3[i])


# In[98]:


all_fpr3 = np.unique(np.concatenate([fpr3[i] for i in range(n_classes)]))

mean_tpr3 = np.zeros_like(all_fpr3)
for i in range(n_classes):
    mean_tpr3 += interp(all_fpr3, fpr3[i], tpr3[i])

mean_tpr3 /= n_classes


# In[113]:


fpr["macro"] = all_fpr
tpr["macro"] = mean_tpr
roc_auc["macro"] = auc(fpr["macro"], tpr["macro"])
fpr2["macro"] = all_fpr2
tpr2["macro"] = mean_tpr2
roc_auc2["macro"] = auc(fpr2["macro"], tpr2["macro"])
fpr3["macro"] = all_fpr3
tpr3["macro"] = mean_tpr3
roc_auc3["macro"] = auc(fpr3["macro"], tpr3["macro"])

lw=2
plt.figure(figsize=(8,5))
plt.plot(fpr["macro"], tpr["macro"],
         label='macro-average ROC curve (RF) (area = {0:0.2f})'
               ''.format(roc_auc["macro"]),
         color='navy',linestyle=':',  linewidth=4)
plt.plot(fpr2["macro"], tpr2["macro"],
         label='macro-average ROC curve (DT) (area = {0:0.2f})'
               ''.format(roc_auc2["macro"]),
         color='green', linestyle=':', linewidth=4)
plt.plot(fpr3["macro"], tpr3["macro"],
         label='macro-average ROC curve (KNN) (area = {0:0.2f})'
               ''.format(roc_auc3["macro"]),
         color='red',linestyle=':',  linewidth=4)


plt.plot([0, 1], [0, 1], 'k--',color='black', lw=lw)
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.05])

plt.xlabel('False Positive Rate(1-specificity)')
plt.ylabel('True Positive Rate(sensitivity)')
plt.title('Receiver Operating Characteristic(FEATURE SET 1) ')
plt.legend(loc="lower right")


# In[ ]:





# In[ ]:




