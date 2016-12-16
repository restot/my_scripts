HWND WINAPI MAINWIN::SearchWinByClassName(char *pCapName,char *pClName,HWND hwnd)
{
char sss[120];
int dir_ [2] = {GW_HWNDNEXT,GW_HWNDPREV};
HWND HH;
 
for (int i=0;i<2;++i)
{
 HH = hwnd;
 for(;;)
 {
  HH = ::GetNextWindow (HH, dir_[i]);  if (HH == NULL) break;
 
  ::memset(sss,0,sizeof(sss));
  ::GetWindowText(HH, sss, sizeof(sss)-1);
  
  if (strcmp(sss, pCapName) == 0)
  {
    ::memset(sss,0,sizeof(sss));
    ::GetClassName(HH,sss,sizeof(sss)-1);
    if(strcmp(sss, pClName) == 0) return HH;
  }
 }
}
 
 return NULL;
}