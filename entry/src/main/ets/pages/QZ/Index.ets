
import { window } from '@kit.ArkUI'
import { AllPage } from './Taking/AllPage';

@Entry
@Component
struct Index {

@State currentIndex:number=0

@State bottomHeight:number=0

  onPageShow(): void {

    window.getLastWindow(getContext(this), (err, data) => {
      if (!err.code) {
        data.setWindowLayoutFullScreen(true)
      }
    });
  }


  @Builder
  TabBuilder(title: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .width(20)
        .aspectRatio(1)
      Text(title)
        .fontSize(10)
        .fontColor(this.currentIndex === targetIndex ? Color.Blue: Color.Black)
        .margin({ top: 4 })
    }
    .width('100%')
    .height(56)
    .border({ width: { top: 1 }, color: '#eee' })
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex;
    })
  }

  build() {
    Tabs({ index: this.currentIndex, barPosition: BarPosition.End }) {

      TabContent() {
          Text('微信')
      }
      .tabBar(this.TabBuilder('微信', 0, $r('app.media.shi'), $r('app.media.kong')))

      TabContent() {
      AllPage()
      }
      .tabBar(this.TabBuilder('联系人', 1, $r('app.media.shi'), $r('app.media.kong')))

      TabContent() {
        Text('发现')

      }
      .tabBar(this.TabBuilder('发现', 2,$r('app.media.shi'), $r('app.media.kong')))

      TabContent() {
        Text('我的')

      }
      .tabBar(this.TabBuilder('我的', 3,$r('app.media.shi'), $r('app.media.kong')))
    }
    .barMode(BarMode.Fixed)
    .scrollable(false)
    .padding({ bottom: this.bottomHeight })
  }
}