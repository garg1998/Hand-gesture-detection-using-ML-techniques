# Hand-gesture-detection-using-ML-techniques

The aim of this work to obtain an accurate model for detection of hand gestures using EMG signals, with a vision to 
control prosthetic devices. The EMG signals are processed to obtain various time and frequency domain features. In 
order to enhance the performance of classifiers the windowing method is applied on the signals and later features are 
extracted. The extracted features are then normalized using Min-Max normalization method and for dimensionality 
reduction, Principle component analysis (PCA) is used. The various Machine learning algorithms are applied: 
Random Forest, K-Nearest Neighbours (KNN) and Decision tree for classification. The results demonstrate KNN 
when used with a feature set with windowing, as the best classifier (accuracy of 98.44%). Also, the results show that 
the overall feature set with windowing performs better than the one without. 
