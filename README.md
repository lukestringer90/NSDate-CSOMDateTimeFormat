NSDate CSOMDateTimeFormat
=========================

Category to generate a CSOM DateTime string representation (used in .Net) of an NSDate instance.

CSOM DateTime format defined by Microsoft as:
> The number of 100-nanosecond intervals that have elapsed since 12:00 A.M., January 1, 0001

[MSDN documentation](http://msdn.microsoft.com/en-us/library/dd948679).


## Usage
```
NSString *csomDateTime = [[NSDate date] CSOMDateTimeFormat];
```

The date `2012-10-03 18:54:48 +0000` yields `634848872888416640`.

---

### Author

Follow me on twitter: [lukestringer90](http://twitter.com/lukestringer90)