Inspiration
We have all experienced some form of virtual learning this past year from lectures to clubs to meetings. The wave of tiredness you feel after an online lecture can be a result of how much harder it is to communicate virtually without nonverbal cues. Especially when learning something new, these cues help educators adjust their pace and identify students who may benefit from more support.

Drawing from these personal and community experiences, we were inspired to develop Polymer.

What it does
Polymer utilizes a specialized Zoom Client to gather video data of students in a class session. This data is sent to a database where Computer Vision and Cognitive Services APIs from Microsoft analyze the general emotions of students. With a range of identifiable emotions such as joy, anger, and fear, a variety of insights can be derived. These insights are sent to the Polymer app, accessible to students and teachers in personalized dashboards. These dashboards show classes the individual is a part of and the general breakdown of emotions from that session in percentages. From this data, students and teachers alike can reassess how to make the class more engaging and improve focus.

How we built it
The personalized Zoom Client was built using HTML and CSS in Electron. The data collected from the Client went to a database created using Django. There, the APIs from Microsoft, Computer Vision and Cognitive Services, were used to analyze the video data, identifying various emotions from student’s facial expressions. From there, insights were displayed in the Polymer app through a dashboard.

Challenges we ran into
Creating a specialized Zoom Client that would integrate well with the APIs proved difficult. This specific Zoom Client had to have rectangles around student's faces in order for the APIs to work properly. Through time and lots of fiddling, we created an appropriate Zoom Client to gather the data.

Accomplishments that we're proud of
Each component of the project, the Client, database, and app, are all functional. Notably, they all have integrated well with each other, which was a challenging feat for us.

What we learned
APIs can greatly expand the reach of code functionality. Exploring APIs and nuances to mobile app development was a fun and enriching experience.

What's next for Polymer App
At its core, the Polymer App analyzes facial expressions and delivers this information to educators and students. When working with virtual learning in the future, the app can be increased in scope to include signs if students are uncomfortable in their home-environment and other methods to assist educators in helping their students.

Built With
css
django
electron
flutter
html
microsoftazurecomputervision
microsoftcognitiveservices
