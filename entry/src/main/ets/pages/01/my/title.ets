import { router } from '@kit.ArkUI'

@Component
struct Title {

  build() {
    Row({ space: 15 }) {

      Image($r('app.media.999'))
        .width(60)
        .height(60)
        .borderRadius(30)
      Text('请登录')
        .fontSize(18)
        .fontWeight(700)
        .layoutWeight(1)
      Image($r('sys.media.ohos_ic_public_arrow_right'))
        .width(20)
        .height(20)
    }
    .width('100%')
    .height(100)
    .padding(20)
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .onClick(() =>{
      router.pushUrl({
        url: 'pages/Login'
      })
    })

  }
}

export default Title;