import LieBiao from './my/liebiao'
import Title from './my/title'
import { BiaoItem, BiaoItemModel } from './types/Biao'

@Entry
@Component
struct My {
  @State list : BiaoItem[] = [
    new BiaoItemModel({
      name: 'order',
      title: '我的订单',
      icon: $r('app.media.order')
    }),
    new BiaoItemModel({
      name: 'money',
      title: '我的余额',
      icon: $r('app.media.money')
    }),
    new BiaoItemModel({
      name: 'study',
      title: '我的学习',
      icon: $r('app.media.study')
    }),
    new BiaoItemModel({
      name: 'setting',
      title: '设置',
      icon: $r('app.media.setting')
    }),
    new BiaoItemModel({
      name: 'help',
      title: '意见反馈',
      icon: $r('app.media.help')
    }),
    new BiaoItemModel({
      name: 'about',
      title: '关于我们',
      icon: $r('app.media.about')
    }),
  ]

  build() {
    Column() {

      Text('我的')
        .fontColor('#fff')
        .fontSize(18)
        .width('100%')
        .height(60)
        .textAlign(TextAlign.Center)
      Column() {
        Title()


        Divider().strokeWidth(5).color('#ffeaf0fa')


        ForEach(this.list, (item: BiaoItem)=>{
          LieBiao({
            item: item
          })
          if (item.name === 'study' || item.name === 'help') {
            Divider()
              .strokeWidth(5)
              .color(Color.Green)
          }
          // }else {
          //   Divider()
          //     .strokeWidth(1)
          //     .color('#eee')
          // }
        },(item: BiaoItem) => item.name)
      }
      .width('100%')
       .layoutWeight(1)
      .backgroundColor('#fff')
      .borderRadius({
        topLeft: 14,
        topRight: 14
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#004198')
    .alignItems(HorizontalAlign.Start)
  }
}

export default My;