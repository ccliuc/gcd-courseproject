### Code book - "tidy_data_set.txt"
The experiments have been carried out with a group of 30 volunteers. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured. 
The sensor acceleration signal, was separated into body acceleration and gravity.
A vector of features was obtained by calculating variables from the time and frequency domain.
According to the description of the study, features are normalized and bounded within [-1,1]. This means that with all the viriables, the data has been
divided by its range to normalise it. Hence, the units of the variables are cancelled out leaving with ratios.

The tidy data set submitted for course project part 1 contains 81 columns. The data set provides the average of each mean and standard deviation
measurement in each activity for each subject/volunteer. With variables 3-81, the data are ratios.


1. activity: Activity Name
2. subject:  Subject/Volunteer ID       	
3. AVEtBodyAccMEANX: Average of mean value of body acceleration time domain signal in the X direction				
4. AVEtBodyAccMEANY: Average of mean value of body acceleration time domain signal in the Y direction	
5. AVEtBodyAccMEANZ: Average of mean value of body acceleration time domain signal in the Z direction
6. AVEtBodyAccSTDX: Average of standard deviation of body acceleration time domain signal in the X direction
7. AVEtBodyAccSTDY: Average of standard deviation of body acceleration time domain signal in the Y direction
8. AVEtBodyAccSTDZ: Average of standard deviation of body acceleration time domain signal in the Z direction
9. AVEtGravityAccMEANX: Average of mean value of gravity acceleration time domain signal in the X direction	
10. AVEtGravityAccMEANY: Average of mean value of gravity acceleration time domain signal in the Y direction	
11. AVEtGravityAccMEANZ: Average of mean value of gravity acceleration time domain signal in the Z direction	
12. AVEtGravityAccSTDX: Average of standard deviation of gravity acceleration time domain signal in the X direction	
13. AVEtGravityAccSTDY: Average of standard deviation of gravity acceleration time domain signal in the Y direction	
14. AVEtGravityAccSTDZ: Average of standard deviation of gravity acceleration time domain signal in the Z direction	
15. AVEtBodyAccJerkMEANX: Average of mean value of Jerk signal derived from body linear acceleration time domain signal in the X direction	
16. AVEtBodyAccJerkMEANY: Average of mean value of Jerk signal derived from body linear acceleration time domain signal in the Y direction	
17. AVEtBodyAccJerkMEANZ: Average of mean value of Jerk signal derived from body linear acceleration time domain signal in the Z direction	
18. AVEtBodyAccJerkSTDX: Average of standard deviation of Jerk signal derived from body linear acceleration time domain signal in the X direction	
19. AVEtBodyAccJerkSTDY: Average of standard deviation of Jerk signal derived from body linear acceleration time domain signal in the Y direction	
20. AVEtBodyAccJerkSTDZ: Average of standard deviation of Jerk signal derived from body linear acceleration time domain signal in the Z direction	
21. AVEtBodyGyroMEANX: Average of mean value of body angular velocity time domain signal in the X direction	
22. AVEtBodyGyroMEANY: Average of mean value of body angular velocity time domain signal in the Y direction	
23. AVEtBodyGyroMEANZ: Average of mean value of body angular velocity time domain signal in the Z direction	
24. AVEtBodyGyroSTDX: Average of standard deviation of body angular velocity time domain signal in the X direction	
25. AVEtBodyGyroSTDY: Average of standard deviation of body angular velocity time domain signal in the Y direction	
26. AVEtBodyGyroSTDZ: Average of standard deviation of body angular velocity time domain signal in the Z direction	
27. AVEtBodyGyroJerkMEANX: Average of mean value of Jerk signal derived from body angular velocity time domain signal in the X direction	
28. AVEtBodyGyroJerkMEANY: Average of mean value of Jerk signal derived from body angular velocity time domain signal in the Y direction	
29. AVEtBodyGyroJerkMEANZ: Average of mean value of Jerk signal derived from body angular velocity time domain signal in the Z direction	
30. AVEtBodyGyroJerkSTDX: Average of standard deviation of Jerk signal derived from body angular veolcity time domain signal in the X direction	
31. AVEtBodyGyroJerkSTDY: Average of standard deviation of Jerk signal derived from body angular veolcity time domain signal in the Y direction	
32. AVEtBodyGyroJerkSTDZ: Average of standard deviation of Jerk signal derived from body angular veolcity time domain signal in the Z direction	
33. AVEtBodyAccMagMEAN: Average of mean value of magnitude of 3-dimentional body acceleration time domain signals 	
34. AVEtBodyAccMagSTD: Average of standard deviation of magnitude of 3-dimentional body acceleration time domain signals		
35. AVEtGravityAccMagMEAN: Average of mean value of magnitude of 3-dimentional gravity acceleration time domain signals	
36. AVEtGravityAccMagSTD: Average of standard deviation of magnitude of 3-dimentional gravity acceleration time domain signals		
37. AVEtBodyAccJerkMagMEAN: Average of mean value of magnitude of 3-dimentional Jerk signals derived from body linear acceleration time domain signals	
38. AVEtBodyAccJerkMagSTD: Average of standard deviation of magnitude of 3-dimentional Jerk signals derived from body linear acceleration time domain signals	
39. AVEtBodyGyroMagMEAN: Average of mean value of magnitude of 3-dimentional angular velocity time domain signals	
40. AVEtBodyGyroMagSTD: Average of standard deviation of magnitude of 3-dimentional angular velocity time domain signals	
41. AVEtBodyGyroJerkMagMEAN: Average of mean value of magnitude of 3-dimentional Jerk signals derived from angular velocity time domain signals
42. AVEtBodyGyroJerkMagSTD: Average of standard deviation of magnitude of 3-dimentional Jerk signals derived from angular velocity time domain signals	
43. AVEfBodyAccMEANX: Average of mean value of body acceleration frequency domain signal in the X direction	
44. AVEfBodyAccMEANY: Average of mean value of body acceleration frequency domain signal in the Y direction	
45. AVEfBodyAccMEANZ: Average of mean value of body acceleration frequency domain signal in the Z direction	
46. AVEfBodyAccSTDX: Average of standard deviation of body acceleration frequency domain signal in the X direction	
47. AVEfBodyAccSTDY: Average of standard deviation of body acceleration frequency domain signal in the Y direction	
48. AVEfBodyAccSTDZ: Average of standard deviation of body acceleration frequency domain signal in the Z direction	
49. AVEfBodyAccMEANFreqX: Average of mean frequency derived from weighted average of body acceleration frequency domain signals in the X direction	
50. AVEfBodyAccMEANFreqY: Average of mean frequency derived from weighted average of body acceleration frequency domain signals in the Y direction	
51. AVEfBodyAccMEANFreqZ: Average of mean frequency derived from weighted average of body acceleration frequency domain signals in the Z direction	
52. AVEfBodyAccJerkMEANX: Average of mean value of Jerk signal derived from body linear acceleration frequency domain signal in the X direction	
53. AVEfBodyAccJerkMEANY: Average of mean value of Jerk signal derived from body linear acceleration frequency domain signal in the Y direction	
54. AVEfBodyAccJerkMEANZ: Average of mean value of Jerk signal derived from body linear acceleration frequency domain signal in the Z direction	
55. AVEfBodyAccJerkSTDX: Average of standard deviation of Jerk signal derived from body linear acceleration frequency domain signals in the X direction	
56. AVEfBodyAccJerkSTDY: Average of standard deviation of Jerk signal derived from body linear acceleration frequency domain signals in the Y direction	
57. AVEfBodyAccJerkSTDZ: Average of standard deviation of Jerk signal derived from body linear acceleration frequency domain signals in the Z direction
58. AVEfBodyAccJerkMEANFreqX: Average of mean frequency of Jerk signal derived from body linear acceleration frequency domain signals in the X direction	
59. AVEfBodyAccJerkMEANFreqY: Average of mean frequency of Jerk signal derived from body linear acceleration frequency domain signals in the Y direction	
60. AVEfBodyAccJerkMEANFreqZ: Average of mean frequency of Jerk signal derived from body linear acceleration frequency domain signals in the Z direction	
61. AVEfBodyGyroMEANX: Average of mean value of body angular velocity frequency domain signal in the X direction	
62. AVEfBodyGyroMEANY: Average of mean value of body angular velocity frequency domain signal in the Y direction	
63. AVEfBodyGyroMEANZ: Average of mean value of body angular velocity frequency domain signal in the Z direction	
64. AVEfBodyGyroSTDX: Average of standard deviation of body angular velocity frequency domain signal in the X direction	
65. AVEfBodyGyroSTDY: Average of standard deviation of body angular velocity frequency domain signal in the Y direction	
66. AVEfBodyGyroSTDZ: Average of standard deviation of body angular velocity frequency domain signal in the Z direction	
67. AVEfBodyGyroMEANFreqX: Average of mean frequency derived from weighted average of body angular velocity frequency domain signals in the X direction	
68. AVEfBodyGyroMEANFreqY: Average of mean frequency derived from weighted average of body angular velocity frequency domain signals in the Y direction	
69. AVEfBodyGyroMEANFreqZ: Average of mean frequency derived from weighted average of body angular velocity frequency domain signals in the Z direction	
70. AVEfBodyAccMagMEAN: Average of mean value of magnitude of 3-dimentional body acceleration frequency domain signals	
71. AVEfBodyAccMagSTD: Average of standard deviation of magnitude of 3-dimentional body acceleration frequency domain signals	
72. AVEfBodyAccMagMEANFreq: Average of mean frequency of magnitude of 3-dimentional body acceleration frequency domain signals	
73. AVEfBodyBodyAccJerkMagMEAN: Average of mean value of magnitude of 3-dimentional Jerk signals derived from body acceleration frequency domain signals
74. AVEfBodyBodyAccJerkMagSTD: Average of standard deviation of magnitude of 3-dimentional Jerk signals derived from body acceleration frequency domain signals	
75. AVEfBodyBodyAccJerkMagMEANFreq: Average of mean frequency of magnitude of 3-dimentional Jerk signals derived from body acceleration frequency domain signals	
76. AVEfBodyBodyGyroMagMEAN: Average of mean value of magnitude of 3-dimentional body angular velocity frequency domain signals	
77. AVEfBodyBodyGyroMagSTD: Average of standard deviation of magnitude of 3-dimentional body angular velocity frequency domain signals	
78. AVEfBodyBodyGyroMagMEANFreq: Average of mean frequency of magnitude of 3-dimentional body angular velocity frequency domain signals	
79. AVEfBodyBodyGyroJerkMagMEAN: Average of mean value of magnitude of 3-dimentional Jerk signals derived from body angular velocity frequency domain signals	
80. AVEfBodyBodyGyroJerkMagSTD: Average of standard deviation of magnitude of 3-dimentional Jerk signals derived from body angular velocity frequency domain signals		
81. AVEfBodyBodyGyroJerkMagMEANFreq: Average of mean frequency of magnitude of 3-dimentional Jerk signals derived from body angular velocity frequency domain signals