This fork allows to use RPFloatingPlaceholders with Auto Layout when it is set in code. 
The example uses Auto Layout Visual Format for setup. 
The only thing that needs to be done is to call the adjustFrames in -(void)viewDidLayoutSubviews (check example).

## RPFloatingPlaceholders

UITextField and UITextView subclasses with placeholders that change into floating labels when the fields are populated with text.  

Please see the included example app for sample usage.

### Options:

**Animate upward (default)**

![Upwards animation](http://i.imgur.com/HLehhbQ.gif)

**Animate downward**

![Downwards animation](http://i.imgur.com/DrAECwk.gif)

### Supports: 
ARC & iOS 6+, Autolayout or springs and struts

### A little help from my friends:
Please feel free to fork and create a pull request for bug fixes or improvements, being sure to maintain the general coding style and adding comments as necessary.

Thanks to the following people for their help: 

* [Giridhar](https://github.com/gizmoboy7)
* [Dima](https://github.com/DimaVartanian)
* [Dan Spinosa](https://github.com/spinosa)

### Credit:
[Credit for the design concept goes to Matt D. Smith](http://dribbble.com/shots/1254439--GIF-Mobile-Form-Interaction).
