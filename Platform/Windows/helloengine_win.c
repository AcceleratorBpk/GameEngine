#include<windows.h>
#include<windowsx.h>
#include<tchar.h>
// windowProc 回调函数 调用函数指针
//HWND是窗口句柄 Umsg 消息类型 w l两种特定消息
LRESULT CALLBACK WindowProc(HWND hwnd,
                            UINT message,
                            WPARAM wParam,
                            LPARAM lParam);
//初始化应用程序
int WINAPI WinMain(HINSTANCE hInstance,//HINSTANCE 句柄型 内存资源ID 实例的句柄
                   HINSTANCE hPrevInstance,// 之前实例的句柄，上一个，对于32位程序，该参数总位NULL
                    LPTSTR lpCmdLine,//命令行的字符串的指针
                    int nCmdShow) // 指明窗口如何显示
                    {
                        HWND hwnd;//创建句柄
                        WNDCLASSEX wc; //声明一个窗口类
                        ZeroMemory(&wc,sizeof(WNDCLASSEX));//窗口关闭清空内存
                        wc.cbSize=sizeof(WNDCLASSEX);//WNDCLASSEX大小在调用GetClassInfoEx前必须要先设置它值。我们可以用sizeof（WNDCLASSEX）来获得准确的值
                        wc.style=CS_HREDRAW|CS_VREDRAW;//窗口类的格式，可以窗口样式值得任意组合
                        wc.lpfnWndProc=WindowProc;//lpfn窗口类的指针，指向窗口处理函数（回调函数）。处理窗口事件，像单击鼠标会怎样，右击鼠标会怎样，都是由此函数控制的。
                        wc.hInstance=hInstance;//句柄 ID
                        wc.hCursor=LoadCursor(NULL,IDC_ARROW);


                    }