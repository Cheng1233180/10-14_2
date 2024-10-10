@Preview
@Component
struct Title {
  build() {
    Row(){
      Column(){
        Stack(){
          TextInput({placeholder: "搜索你想要的内容"})
            .textAlign(TextAlign.Center)
            .backgroundColor('#eee')
            .width('96%')
            .height(30)
            .padding({left: 50})
            .placeholderFont({size: 14})
          Image($r('app.media.search'))
            .width(20)
            .height(20)
            .offset({
              x:-55
            })
        }
      }
      .width('100%')
      .height(30)
    }
    .height(50)
    .width('100%')
    .backgroundColor('#004198')

  }

}
export default Title;