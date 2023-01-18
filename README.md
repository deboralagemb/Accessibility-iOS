# Accessibility-iOS

Project to practice and demonstrate basic accessibility tools that Swift + UIKit provide to developers.
The project is compatible with 
   
### 1. Language
The project is available for devices with preferred languages set to English or Portuguese (BR).
If you want to see the difference, simply navigate to Settings -> Language & Region and set your preferred language between those two.

English                    |  Portuguese (BR)
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/46940447/213055253-4f2e6b5e-95c8-4886-9ff1-3ff80d0e4ef6.png" width="50%" height="50%"/>  |  <img src="https://user-images.githubusercontent.com/46940447/213055999-c56e0826-f9e6-4cb3-82a3-65d47e57722f.png" width="50%" height="50%"/>

### 2. Colors
When it comes to colors in app development, the developer have two main concerns: the visual (contrast) and the device's settings. 

#### 2.1 Colors contrast
In propper product teams, it should be the designer's job to worry about contrast, and the developer would just follow the design proposed. But when it comes to indie developers or smaller teams with no designer allocation, it's the developer responsibility to guarantee that the app can be read with no difficulties.

<img src="https://user-images.githubusercontent.com/46940447/213057175-f48b1208-c285-4c9d-8492-661ef8ad7682.png" width="25%" height="25%"/>

**To see if your app has a good contrast, open accesibility inspector and run audit**

<img src="https://user-images.githubusercontent.com/46940447/213057716-6699ee4c-39fe-4c28-b7c2-8f19592c039f.png" width="50%" height="50%"/>

#### 2.2 Light and dark mode
It's a phone setting that changes the appearance depending on the user's needs. But if the developer wants the app to comply with the phone's appearance, it has to be developed. If you want to see the difference, go to Settings -> Accessibility -> Display & Text size -> Larger text.

Light mode                 |  Dark Mode
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/46940447/213058607-ddaaddf0-bf3e-4c28-a219-89b3af779a7e.png" width="50%" height="50%"/>  |  <img src="https://user-images.githubusercontent.com/46940447/213059402-e8761905-54da-4050-9cea-fac7e7fa8239.png" width="50%" height="50%"/>

### 3. Fonts
The user can set different font sizes on the phone's settings. The layout should be resposive according to user's choice. Custom fonts can be adapted to behave according to the settings. 

Normal size                |  Bigger size
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/46940447/213061786-e208804e-81c0-47b6-9af6-b784d72951fe.png" width="50%" height="50%"/>  |  <img src="https://user-images.githubusercontent.com/46940447/213061836-f72e5564-9495-4ee8-9a88-4e7fd039a549.png" width="50%" height="50%"/>

### 4. Readability
One of the main accessibility features is VoiceOver. It reads to the user the content shown on the device. But, it also has to be configured by the developer, using the accessibility API, to provide a good experience. 

<img src="https://user-images.githubusercontent.com/46940447/213063059-53d7ff4f-75a3-41f0-894c-08fc5fddf107.png" width="25%" height="25%"/>

**To see if your app has a good readability, open accesibility inspector and inpect elements, or build the app on a device and run VoiceOver**

<img src="https://user-images.githubusercontent.com/46940447/213064651-c3901f7a-bec6-4223-b60a-5755260a1f0d.png" width="50%" height="50%"/>


*Images from:*
- https://www.flaticon.com/br/icones-gratis/google
- https://www.flaticon.com/br/icones-gratis/twitter
- https://www.flaticon.com/br/icones-gratis/facebook
- https://www.flaticon.com/br/stickers-gratis/linkedin
