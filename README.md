&#x202b; در این پروژه به استفاده از خوشه بندی k-means برای سگمنت بندی یک تصویر خواهیم پرداخت.

&#x202b; تابعی به شکل زیر طراحی شده

function (index, segmentedImg, centers] = segment(img, k, initialMethod)

&#x202b;img یک آرایه M XNx3 برگردانده شده توسط تابع imread در متلب است. تابع imread آدرس فایل تصویر را گرفته و محتویات تصویر رنگی را خوانده و در آرایه سه بعدی ذخیره می کند. به عبارت بهتر، تصویر img شامل MXN پیکسل است که هر کدام با ۳ المان قابل نمایش است. k تعداد خوشه های مورد نظر تعداد رنگ ها) initialMethod روش مقداردهی اولیه مراکز خوشه را مشخص می کند و می تواند در مقدار 'sample' یا 'plus' را بگیرد. مورد اول مراکز خوشه را به طور تصادفی انتخاب می کند و مورد دوم از الگوریتم k-means++ استفاده می کند. index آرایه MXN از اعداد صحیح بین یک تا k است که نشان می دهد هر پیکسل به کدام خوشه انتساب داده شده است.

&#x202b;centers آرایه 3x k مراکز خوشه ها را مشخص می کند. segmentedImg تصویر سگمنت بندی شده است که به گونه ای ساخته می شود که هر پیکسل آن segmentedImg(m,n) برابر با centers(:,index(m,c)) خواهد بود.
همچنین تابع هزینه J نیز محاسبه شده است:

![image](https://user-images.githubusercontent.com/78867549/113486547-bc646c00-94c8-11eb-9b1a-a38e36052eb8.png)


&#x202b; توضیحات کامل این پروژه به همراه متد های استفاده شده را میتوانید در فایل report مشاهده کنید.