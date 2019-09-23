#include<windows.h>
#include<windowsx.h>
#include<tchar.h>
// windowProc 回调函数 调用函数指针
//LRESULT 就是long型，是Windows API的一种返回类型,指的是从窗口程序或者回调函数返回的32位值；
//CALLBACK表示这个函数是给系统调用的，实际上CALLBACK就是__stdc
//HWND是窗口句柄 Umsg 消息类型 w l两种特定消息
LRESULT CALLBACK WindowProc(HWND hWnd,
                            UINT message,
                            WPARAM wParam,
                            LPARAM lParam);
//初始化应用程序
int WINAPI WinMain(HINSTANCE hInstance,//HINSTANCE 句柄型 内存资源ID 实例的句柄
                   HINSTANCE hPrevInstance,// 之前实例的句柄，上一个，对于32位程序，该参数总位NULL
                    LPTSTR lpCmdLine,//命令行的字符串的指针
                    int nCmdShow) // 指明窗口如何显示
                    {
                        HWND hWnd;//创建句柄
                        WNDCLASSEX wc; //声明一个窗口类
                        ZeroMemory(&wc,sizeof(WNDCLASSEX));//窗口关闭清空内存
                        wc.cbSize=sizeof(WNDCLASSEX);//WNDCLASSEX大小在调用GetClassInfoEx前必须要先设置它值。我们可以用sizeof（WNDCLASSEX）来获得准确的值
                        wc.style=CS_HREDRAW|CS_VREDRAW;//窗口类的格式，可以窗口样式值得任意组合
                        wc.lpfnWndProc=WindowProc;//lpfn窗口类的指针，指向窗口处理函数（回调函数）。处理窗口事件，像单击鼠标会怎样，右击鼠标会怎样，都是由此函数控制的。
                        wc.hInstance=hInstance;//句柄 ID
                        wc.hCursor=LoadCursor(NULL,IDC_ARROW);//鼠标样式
                        wc.hbrBackground=(HBRUSH)COLOR_WINDOW;//窗口背景刷
                        wc.lpszClassName=_T("WindowClass1");//窗口类指针，lpsz
                        
                        RegisterClassEx(&wc);//调用Createwindow函数和CreatewindowEx函数中使用的窗口注册一个窗口类
                        hWnd=CreateWindowEx(0,
                        _T("WindowClass1"),//窗口类名字
                        _T("Hello,Engine!"),//标题
                        WS_OVERLAPPEDWINDOW,//窗口风格
                        300,//x
                        500,//y
                        500,//width
                        400,//height
                        NULL,//无父类窗口
                        NULL,//无菜单
                        hInstance,//申请句柄
                        NULL//无 multiple windows
                        );
ShowWindow(hWnd,nCmdShow);//display
MSG msg;
while(GetMessage(&msg,NULL,0,0))
{
    TranslateMessage(&msg);
    DispatchMessage(&msg);//发送消息给windowProc function
}
return msg.wParam;
                    }
//主要消息处理
LRESULT CALLBACK WindowProc(HWND hWnd,UINT message,WPARAM wParam,LPARAM lParam)
{//拣选运行时的代码消息
    switch(message)
    {
        //窗口关闭时的消息
case WM_PAINT:{
    PAINTSTRUCT ps;
    HDC hdc=BeginPaint(hWnd,&ps);
    RECT rec={20,20,60,80};
    HBRUSH brush=(HBRUSH) GetStockObject(BLACK_BRUSH);//GDI接口
    
    FillRect(hdc,&rec,brush);

    EndPaint(hWnd,&ps);
 }break;
case WM_DESTROY:{
    //关闭时的申请
    PostQuitMessage(0);
    return 0;

}
break ;

    }
    return DefWindowProc(hWnd,message,wParam,lParam);
}