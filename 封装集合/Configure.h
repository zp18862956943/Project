//屏幕宽高
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
//应用高宽
#define ScreenFrameWidth [UIScreen mainScreen].applicationFrame.size.width
#define ScreenFrameHeight [UIScreen mainScreen].applicationFrame.size.height
//十六进制透明度1
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
//伴随透明度的十六进制颜色
#define UIColorFromRGBwithAlpha(rgbValue,a) [UIColor colorWithRed:((float)(((rgbValue) & 0xFF0000) >> 16))/255.0 green:((float)(((rgbValue) & 0xFF00)>>8))/255.0 blue: ((float)((rgbValue) & 0xFF))/255.0 alpha:(a)]
//RGB颜色赋值
#define RGBColor(r , g , b , a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
// 是否大于等于IOS7
#define isIOS7                  ([[[UIDevice currentDevice]systemVersion]floatValue] >= 7.0)
// 是否空对象
#define IS_NULL_CLASS(OBJECT) [OBJECT isKindOfClass:[NSNull class]]
//获取当前语言
#define kCurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])
//获取图片资源
#define GetImage(imageName) [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]
//字符串是否为空
#define kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )
//数组是否为空
#define kArrayIsEmpty(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0)
//字典是否为空
#define kDictIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0)
//是否是空对象
#define kObjectIsEmpty(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))
