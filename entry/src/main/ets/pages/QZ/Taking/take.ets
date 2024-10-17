import { router } from '@kit.ArkUI'
import { lianxiren,liebiao } from './lianxiren'
@Entry
@Component
struct Take {
  @State
  item : liebiao = new liebiao({} as lianxiren)

  build() {
    Column(){
      Row({space:120}){
        Image(this.item.icon)
          .width(20)
          .aspectRatio(1)
          .onClick(()=>{
            router.back()
          })

          Text(this.item.name)
            .fontSize(25)
            .fontWeight(700)
      }

      .width('100%')
      .justifyContent(FlexAlign.Start)
  Row({space:20}){
    Image($r('app.media.bbb'))
      .width(30)
      .aspectRatio(1)
      .borderRadius(30)
    TextInput()
      .width(250)

      Image($r('app.media.ccc'))
        .width(30)
        .aspectRatio(1)
        .borderRadius(30)
  }
  .position({
    bottom:1
  })


    }

    .height('100%')
    .width('100%')
  }
}