- reference
	- backlink: [[💻 Programming]]
	- book : Automate the Boring Stuff With Python

---

### Manipulating Images

Python can use the [[pillow module]] to manipulate lots of images with ease just as you would edit images using other software.

Let's first understand how computers deal with images and colors in Pillow.

#### Colors and RGBA Values

A color in an image is represented by an RGBA value, which stands for red, green, blue, and alpha. This value dictates how much of red, blue, green is there and how transparent it is with alpha value. RGBA values are represented using a tuple of 4 integers, e.g. red is represented as (255, 0, 0, 0). I forgot mention that these integers are only between 0 and 255, inclusive.

There are some standard colors that we don't really need to memorize their RGBA values. 

![[Pasted image 128.png]]

We can also get the RGBA values using the `ImageColor.getcolor()` function. This function takes in two arguments, the **standard color name** then '**RGBA**' as its second argument. See example below.

![[Pasted image 129.png]]

#### Coordinates and Box Tuples

We use a coordinate system similar to the [[Cartesian Plane]], to locate and address specific image pixels. The origin point `(0,0)` is at the top-most left-most corner. As you go right, x increase and as you go down, y increases. Helpful picture to demonstrate this.

![[Pasted image 130.png]]

We specify bounding boxes using a 4 integer tuples with these positional arguments.

![[Pasted image 131.png]]

An example of that is:

![[Pasted image 132.png]]


#### Manipulating Images in Pillow

We open images by first importing the Image module from Pillow by `from PIL import Image` then calling `Image.open()`. Example:

``` py
from PIL import Image
Jed_img = Image.open('Profile_Pic.jpg')
```

##### Working with the Image Data Type

There are several attributes of this image file that we can access. We can access its `filename`, `size`, `format`, and `format_description`. See example

![[Pasted image 134.png]]

We can also make images from scratch using the `Image.new()`
 function. We can add arguments to this function such as:
 
 ![[Pasted image 135.png]]
 
 See example:
 
 ![[Pasted image 136.png]]
 
 #### Cropping Images
 
 To crop images means that we're only taking a part of the original image. We can do this using the `.crop()` method. This takes in a 4 integer tuple. Also, this doesn't crop the original image, instead it returns a new image. See example:
 
 ![[Pasted image 137.png]]
 
 #### Copying and Pasting Images onto Other Images
 
 We can copy images using the `.copy()` method. This is useful if you want have an original copy of the image you are trying to work on. We can also put images on top of each other using the `.paste()`method. This function takes in the image you want to paste on top of the image that called this function and a **2 integer** tuple representing the top-left pixel where the image will be placed.
 
Example:

![[Pasted image 138.png]]

#### Resizing an Image

We can resize images by using the `.resize()` method. This takes in the new dimensions sa a 2-integer tuple. See example:

![[Pasted image 139.png]]

As usual this method returns a new image.

#### Rotating and Flipping Images

We can rotate images by using the `.rotate()` method and specifying the amount of degrees the image must be rotated. See example

``` py
img.rotate(90).save('rotated90.png')
```

We can also pass in the `expand` keyword argument to make the image expand and fit the entire rotated new image.

``` py
catIm.rotate(6, expand=True).save('rotated6_expanded.png')
```

We can also flip images using the `.transpose()` method and specifying how we want it rotated such as `Image.FLIP_LEFT_RIGHT` or `Image.FLIP_TOP_BOTTOM`. 

![[Pasted image 140.png]]

#### Changing Individual Pixels

