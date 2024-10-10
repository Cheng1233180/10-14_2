import { BiaoItem, BiaoItemModel } from '../types/Biao'

@Component
struct LieBiao {
  item : BiaoItemModel = new BiaoItemModel({} as BiaoItem)

  build() {
    Row(){
      Row({space:15}){
        Image(this.item.icon)
          .width(20)
          .height(20)
        Text(this.item.title)
          .fontSize(16)
          .fontWeight(500)
      }
      Image($r('sys.media.ohos_ic_public_arrow_right'))
        .width(20)
        .height(20)
    }
    .width('100%')
    .height(60)
    .padding(20)
    .border({
      color:Color.Green,
      width:{bottom:1}})
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
  }
}
export default LieBiao;