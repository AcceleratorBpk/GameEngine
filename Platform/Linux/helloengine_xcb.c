#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<xcb/xcb.h> //x server链接库
int main(void){
// 屏幕:  ScreenRec
// 窗口：WindowRec
// 图片:  PixmapRec
// 绘图上下文: GC
// 颜色映射: Colormap
// 客户端：ClientRec
    xcb_connection_t    *pConn;
    xcb_screen_T        *pScreen; //screen
    xcb_window_t        window;
    xcb_gcontext_t      foreground;
    xcb_gcontext_t      background;
    xcb_generic_event_t *pEvent;
    uint32_t    mask=0;
    uint32_t    values[2];
    uint8_t     isQuit=0;
    char title[]="Hey,Engine!";
    char title_icon[]="Yo,Engine!(iconified)";

// 与Xserver链接
pConn=xcb_connect(0,0);

//获得显示
pScreen=xcb_setup_roots_iterator(xcb_get_setup(pConn)).data;
//setup里保存Xserver信息,获得Screen才能获得窗口，创建窗口需要其信息，一个display可能有多个screen，所以通过xcb_setup_roots_iterator()函数返回迭代器遍历
//得到root窗口
window=pScreen->root;

//创建一个黑图像块
foreground = xcb_generate_id(pConn);
mask = XCB_GC_FOREGROUND | XCB_BG_GRAPHICS_EXPOSURES;//或运算
values[0]=pScreen->black_pixel;
values[1]=0;
xcb_create_gc(pConn,foreground,window,mask,values);
//创建一个白色背景
background=xcb_generate_id(pConn); //链接打开
mask=XCB_GC_BACKGROUND | XCB_GC_GRAPHICS_EXPOSURES;
values[0]=pScreen->white_pixel;
values[1]=0;
xcb_create_gc(pConn,background,window,mask,values);
//创建win窗口
window=xcb_generate_id(pConn);
mask=XCB_CW_BACK_PIXEL | XCB_CW_EVENT_MASK;
values[0]=pScreen->white_pixel;
values[1]=XCB_EVENT_MASK_EXPOSURE | XCB_EVENT_MASK_KEY_PRESS;
xcb_create_window(pConn, //链接
                    XCB_COPY_FROM_PARENT, //深度
                    window,  //窗口编号
                    pScreen->root,  
                    20,20, //x,y
                    640,480, //长和宽 width height
                    10, //边框宽度
                    XCB_WINDOW_CLASS_INPUT_OUTPUT,  //窗口类（有三种）输入输出，特性https://blog.csdn.net/avan_lau/article/details/5539251
                    pScreen->root_visual,
                    mask,values);
//设置标题
xcb_change_property(pConn,XCB_PROP_MODE_REPLACE,window,
                    XCB_ATOM_WM_NAME,XCB_ATOM_STRING,8,
                    strlen(title),title);
//设置标题图标
xcb_change_property(pConn,XCB_PROP_MODE_REPLACE,window,
                    XCB_ATOM_WM_ICON_NAME,XCB_ATOM_STRING,8,
                    strlen(title_icon),title_icon);
//将窗口显示在screen上
xcb_map_window(pConn,window);
xcb_flush(pConn);
while((pEvent=xcb_wait_for_event(pConn))&&!isQuit){
    switch(pEvent->response_type&~0x80){
        case XCB_EXPOSE:
        break;
        case XCB_KEY_PRESS:
        isQuit=1;
        break;

    }
    free(pEvent);
}
return 0;
}
