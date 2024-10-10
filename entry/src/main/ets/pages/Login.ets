import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct Login {
  @State username: string = ''
  @State password: string = ''
  @State yzm:string = '获取验证码'
  @State num:number = 0
  @State code:string = ''

  build() {
    Column({ space: 20}) {
      Row(){
        Image($r('app.media.back'))
          .width(30)
          .aspectRatio(1)
          .onClick(()=>{
            router.back()
          })
      }
      .width('90%')
      .margin({
        bottom: 80
      })
      Text('欢迎回来！')
        .fontSize(30)
        .margin({
          bottom: 20
        })
        .width('90%')
      Column() {
        Text('手机号码')
          .margin({
            left: 15,
            top: 10
          })
          .fontSize(14)
        TextInput({placeholder: '请输入手机号码',text: $$this.username})
          .backgroundColor('#eee')
          .width('70%')
      }
      .backgroundColor('#eee')
      .alignItems(HorizontalAlign.Start)
      .padding(5)
      .width('90%')
      .borderRadius(10)
      Column() {
        Text('验证码')
          .margin({
            left: 15,
            top: 10
          })
          .fontSize(14)
        Row(){
          TextInput({placeholder: '请输入验证码',text: $$this.password})
            .backgroundColor('#eee')
            .width('70%')
          Text(this.yzm)
            .backgroundColor('#ff386bc4')
            .height(40)
            .layoutWeight(1)
            .textAlign(TextAlign.Center)
            .fontColor('#fff')
            .borderRadius(5)
            .onClick(() =>{
              this.num = 3
              const  timer = setInterval(()=>{
                if (this.num<1) {
                  this.yzm = '获取验证码'
                  clearInterval(timer)
                }else {
                  this.num--
                  this.yzm = `获取验证码（${this.num}）`
                }

              },1000)
              promptAction.showToast({
                message: '验证码已发送'
              })
              this.code = Math.random().toString().slice(2,6)
              promptAction.showToast({
                message: this.code
              })
            })
        }
        .width('100%')
      }
      .backgroundColor('#eee')
      .alignItems(HorizontalAlign.Start)
      .padding(5)
      .width('90%')
      .borderRadius(10)
      Text('登录')
        .width('90%')
        .textAlign(TextAlign.Center)
        .backgroundColor('#ff386bc4')
        .height(50)
        .borderRadius(10)
        .fontColor('#fff')
        .fontSize(18)
        .onClick(() => {
          if (this.username === '18530599082' && this.password === this.yzm) {
            router.pushUrl({
              url: 'pages/aaa'
            })
          }else {
            promptAction.showToast({
              message: '验证码错误'
            })
          }
        })
    }
    .padding({
      top: 40
    })
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Center)
  }
}