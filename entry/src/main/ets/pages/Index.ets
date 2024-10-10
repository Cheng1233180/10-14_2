import My from './01/my';
import Read from './01/read'
import { window } from '@kit.ArkUI';


interface TabItem {
  name: string;
  title: string;
  icon: ResourceStr;
  selectedIcon: ResourceStr;
}


@Entry
@Component
struct Index {

  @State tabList: TabItem[]= [
    {
      name: 'home',
      title: '首页',
      icon: $r('app.media.home'),
      selectedIcon: $r('app.media.home1'),
    },
    {
      name: 'category',
      title: '分类',
      icon: $r('app.media.category'),
      selectedIcon: $r('app.media.category1'),
    },
    {
      name: 'read',
      title: '阅读',
      icon: $r('app.media.read'),
      selectedIcon: $r('app.media.read1'),
    },
    {
      name: 'ask',
      title: '问答',
      icon: $r('app.media.ask'),
      selectedIcon: $r('app.media.ask1'),
    },
    {
      name: 'my',
      title: '我的',
      icon: $r('app.media.my'),
      selectedIcon: $r('app.media.my1'),
    }
  ]

  onPageShow(): void {
    window.getLastWindow(getContext(this), (err, data) => {
      if (!err.code) {
        data.setWindowLayoutFullScreen(true)
      }
    });
  }

  @State currentIndex: number = 2

  @Builder
  TabContentItem(item: TabItem) {
    Column(){
      Image(item.name === this.tabList[this.currentIndex].name?item.selectedIcon:item.icon)
      .width(20)
      .height(20)
      Text(item.title)
        .fontSize(14)
        .fontColor(item.name === this.tabList[this.currentIndex].name?'#004198':'#8a8a8a')
        .margin({top: 6})
    }
    .margin({top: 10})
  }

  build() {
   Tabs({index: $$this.currentIndex}){
     ForEach(this.tabList, (item: TabItem)=>{
       TabContent(){
         if (item.name == 'home') {
           Text(item.title)
         }else if (item.name == 'category') {
           Text('分类')
         }else if (item.name == 'read') {
           Read()
         }else if (item.name == 'ask') {
           Text('问答')
         }else if (item.name == 'my') {
           My()
         }
       }.tabBar(this.TabContentItem(item))
     }, (item: TabItem)=> item.name)
   }.barPosition(BarPosition.End)
  }
}