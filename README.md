
RichStyleLabel
==============

Subclass of UILabel with rich style, such as auto checking links, supporting regular expression.

It supports:

- Auto check links in text, and apply the link style.
- Apply user defined attributes to regular expression match results.
 

![examle](ScreenShots/example.png)

Installation
-------------------------
- Grab the source file into your project. 
- Or use cocoapods. Here is an example of your podfile:

```
pod 'RichStyleLabel'
```

Example
-------
```
RichStyleLabel *regexLabel = [[RichStyleLabel alloc] initWithFrame:CGRectMake(0, 200, 320, 100)];
NSDictionary* redTextAttributes = @{ NSForegroundColorAttributeName : [UIColor redColor]};
[regexLabel setAttributedText:@"123Hello, world! " withRegularPattern:@"^[0-9]+" attributes:redTextAttributes];
```
See the project for more details.

License
------
RichStyleLabel is available under the MIT license. See the LICENSE file for more info.

