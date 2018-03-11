# HairLine

`Hairline` draws *crisp* separators in `Tableview / Collection View` or `NavigationBar` . 
Often custom design requires separators which can't be achieved with native separators as its a shadow. 

Hairline is used for :
1. Creating custom navigation bar separator
2. Creating UITableViewCell / UICollectionViewCell separators.
3. Separating 2 segments 

-----------you can add these separators to achieve hairline behavior

Problems with current Apple API : 

Apple does not allow to draw half pixel, even if you forcefully try to give a `Constraint constant = 0.5`
In case of navigation bar, Apple itself draw a shadow which looks like a hairline of half pixel.
As shadows are drawn outside the view boundary we need to make sure `clipsToBounds` & `masksToBounds` is `false`.

So what Next....trying more alternatives 
Naah !!!

Here comes rescue from all these tiring stuff :

**Pathway:**
1. Create a 1px View 
2. Apply necessary constraints
3. Provide a class in Identity Inspector

Yeahhh.....Yes you are done with these tiny steps :)

You need to have a checkpoint 
Sometimes iOS simulator works in a buggy fashion.
--------How to Check ,It's simple either increase or decrease the size of simulator (xCode 9+). 

Though it works well (100%) on Device.

I have zoomed in the screenshot to show the difference.

<img width="547" alt="screen shot 2018-03-09 at 5 26 30 pm" src="https://user-images.githubusercontent.com/3116207/37250847-53944b7e-252b-11e8-9a6a-a06b42d7d00f.png">


## Contributing

Issues and Feature Requests are welcome!

## Author

Created with :heart: by [Vinay Chopra](https://github.com/vinaychopra90)

Twitter: [@vinaychopra90](https://twitter.com/vinaychopra90)

Cheers.




